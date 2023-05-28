import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:megaohm_app/base/enums/chart_type/chart_type.dart';
import 'package:megaohm_app/base/enums/data/averaging_level.dart';
import 'package:megaohm_app/base/extensions/ext.dart';
import 'package:megaohm_app/core/error/exceptions.dart';
import 'package:megaohm_app/data/entities/get_data/get_data_request.dart';
import 'package:megaohm_app/domain/models/air_model.dart';
import 'package:megaohm_app/domain/models/data_response_model.dart';
import 'package:megaohm_app/domain/models/sensor_model.dart';
import 'package:megaohm_app/internal/injection_container.dart';
import 'package:megaohm_app/presentation/bloc/get_data/get_data_bloc.dart';
import 'package:megaohm_app/presentation/ui/app_ui.dart';
import 'package:megaohm_app/presentation/widgets/dialogs/app_bottom_sheet.dart';
import 'package:megaohm_app/presentation/widgets/dialogs/choose_detail_type_dialog.dart';
import 'package:megaohm_app/presentation/widgets/dialogs/information_dialog.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<StatefulWidget> createState() => _MainPage();
}

class _MainPage extends State<MainPage> {
  final bloc = locator<GetDataBloc>();
  bool loading = true;
  String? errorMessage;

  Discrete? discrete = Discrete.hourly;

  static final DateTime _minDate = DateTime(2020);
  static final DateTime _maxDate = DateTime(DateTime.now().year, 12, 31);

  DateTime? _filterDateFrom;
  DateTime? _filterDateTo;

  ///список счетчиков
  List<DataResponseModel> responses = [];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => bloc,
        child: BlocBuilder<GetDataBloc, GetDataState>(
          builder: (context, state) {
            state.when(
                initial: () => loading = false,
                error: (message) {
                  loading = false;
                  switch (message.runtimeType) {
                    case BadRequestException:
                      errorMessage =
                          AppLocalizations.of(context)!.wrong_range_exc;
                      break;
                    case ForbiddenException:
                      errorMessage =
                          AppLocalizations.of(context)!.forbidden_exc;
                      break;
                    case DevideNotFoundException:
                      errorMessage =
                          AppLocalizations.of(context)!.device_not_found_exc;
                      break;
                    case TooManyRequestException:
                      errorMessage =
                          AppLocalizations.of(context)!.too_many_requests_exc;
                      break;
                    case UnexpectedException:
                      errorMessage =
                          AppLocalizations.of(context)!.unexpected_exc;
                      break;
                  }
                  _showDialog();
                },
                getData: (result) {
                  loading = false;
                  responses.clear();
                  for (var x in result) {
                    responses.add(DataResponseModel(
                        air: AirModel(
                            sensors: x.air!.sensors!
                                .map((e) => SensorModel(h: e.h, t: e.t))
                                .toList()),
                        ts: x.ts!));
                  }
                  print(responses);
                },
                loading: () => loading = true);
            return Scaffold(
              appBar: AppUI.appBar(
                  context: context,
                  title: AppLocalizations.of(context)!.app_title),
              body: Center(
                child: loading
                    ? const CircularProgressIndicator()
                    : _buildContent(),
              ),
              floatingActionButton: _buildFloatingActionButton(),
            );
          },
        ),
      );

  _buildContent() => SingleChildScrollView(
        child: Column(children: [
          Padding(
              padding: AppUI.contentPadding,
              child: Container(
                child: _buildChart(ChartType.tempetature),
              )),
          Padding(
              padding: AppUI.contentPadding,
              child: Container(
                child: _buildChart(ChartType.humidity),
              )),
        ]),
      );

  _showDialog() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      InformationDialog.show(
          context, AppLocalizations.of(context)!.error, errorMessage!);
    });
  }

  _buildFloatingActionButton() => FloatingActionButton(
      onPressed: _openBottomSheet, child: const Icon(Icons.filter_alt_rounded));

  _openBottomSheet() {
    _buildInputDataDialog();
  }

  _buildChart(ChartType type) {
    List<LineSeries<DataResponseModel, String>> lineSeries = [];
    List<DataResponseModel> data = [];

    for (int i = 0; i < responses.length; i++) {
      responses[i].isoDateTime = DateTime.fromMillisecondsSinceEpoch(
          int.parse(responses[i].ts.split('.')[0]) * 1000);

      data.add(responses[i]);
    }
    if (responses.isNotEmpty) {
      lineSeries.add(LineSeries<DataResponseModel, String>(
          dataSource: data,
          name: '${AppLocalizations.of(context)!.sensor} 1',
          dataLabelSettings: const DataLabelSettings(isVisible: true),
          xValueMapper: (DataResponseModel res, _) =>
              res.isoDateTime!.toShortString(),
          yValueMapper: (DataResponseModel res, _) =>
              type == ChartType.tempetature
                  ? res.air.sensors[0].t
                  : res.air.sensors[0].h));
      lineSeries.add(LineSeries<DataResponseModel, String>(
          dataSource: data,
          name: '${AppLocalizations.of(context)!.sensor} 2',
          dataLabelSettings: const DataLabelSettings(isVisible: true),
          xValueMapper: (DataResponseModel res, _) =>
              res.isoDateTime!.toShortString(),
          yValueMapper: (DataResponseModel res, _) =>
              type == ChartType.tempetature
                  ? res.air.sensors[1].t
                  : res.air.sensors[1].h));
    }
    return SfCartesianChart(
        primaryXAxis: CategoryAxis(),
        title: ChartTitle(
            text: type == ChartType.tempetature
                ? AppLocalizations.of(context)!.temp_chart
                : AppLocalizations.of(context)!.hum_chart),
        legend: Legend(isVisible: true),
        series: lineSeries);
  }

  _buildInputDataDialog() async {
    var result = await AppBottomSheet.showBottomSheet(
        AppLocalizations.of(context)!.select_range,
        [
          AppUI.contentVerticalSpacingExtraSmall,
          _buildFilterDate(),
          _buildDiscreteButton(),
          _buildFilterButtons(),
          AppUI.contentVerticalSpacingExtraSmall,
        ],
        context);
    if (result != null && result) {
      final request = GetDataRequest(
          start_date: _filterDateFrom!.toString().split(' ')[0],
          end_date: _filterDateTo!.toString().split(' ')[0],
          discrete: discrete!.toShortString());
      bloc.add(GetData(request: request));
    }
  }

  _buildFilterDate() {
    return Padding(
        padding: AppUI.bottomSheetContentPadding,
        child: Row(
          children: [
            _buildFilterDateFrom(),
            AppUI.contentHorizontalSpacingExtraSmall,
            _buildFilterDateTo(),
          ],
        ));
  }

  _buildFilterDateFrom() {
    return Expanded(
        child: _buildFilterDateFiled(
            labelText: AppLocalizations.of(context)!.from,
            getInitValueFunc: () => _filterDateFrom,
            onChanged: (value) => _filterDateFrom = value));
  }

  _buildFilterDateTo() {
    return Expanded(
        child: _buildFilterDateFiled(
            labelText: AppLocalizations.of(context)!.to,
            getInitValueFunc: () => _filterDateTo,
            onChanged: (value) => _filterDateTo = value));
  }

  _buildDiscreteButton() => Padding(
        padding: AppUI.bottomSheetContentPadding,
        child: OutlinedButton(
            onPressed: () async {
              var result = await ChooseDetailTypeDialog.show(
                  context, AppLocalizations.of(context)!.detail_type);
              if (result != null) {
                discrete = result;
              }
            },
            child: Text(AppLocalizations.of(context)!.detail_type)),
      );

  _buildFilterButtons() {
    return Padding(
        padding: AppUI.bottomSheetContentPadding,
        child: Row(
          children: [
            _buildFilterButtonClear(),
            AppUI.contentHorizontalSpacingExtraSmall,
            _buildFilterButtonApply(),
          ],
        ));
  }

  _buildFilterButtonClear() {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(foregroundColor: Colors.red),
        child: Text(AppLocalizations.of(context)!.cancel),
        onPressed: () => Navigator.pop(context, false),
      ),
    );
  }

  _buildFilterButtonApply() {
    return Expanded(
        child: ElevatedButton(
      style: ElevatedButton.styleFrom(foregroundColor: Colors.white),
      onPressed: () {
        Navigator.pop(context, true);
      },
      child: Text(AppLocalizations.of(context)!.accept),
    ));
  }

  _buildFilterDateFiled(
      {required String labelText,
      ValueChanged<DateTime?>? onChanged,
      required DateTime? Function() getInitValueFunc}) {
    return DateTimeField(
      decoration: InputDecoration(
        labelText: labelText,
        border: AppUI.textFieldInputBorder,
      ),
      style:
          Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.black),
      format: DateFormat.yMd(Localizations.localeOf(context).languageCode),
      initialValue: getInitValueFunc(),
      onChanged: onChanged,
      onShowPicker: (context, currentValue) {
        var initValue = getInitValueFunc();
        return showDatePicker(
            context: context,
            firstDate: _minDate,
            initialDate: initValue ?? DateTime.now(),
            lastDate: _maxDate);
      },
    );
  }
}
