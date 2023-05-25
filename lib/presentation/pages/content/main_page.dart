import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:megaohm_app/base/enums/data/averaging_level.dart';
import 'package:megaohm_app/data/entities/get_data/get_data_request.dart';
import 'package:megaohm_app/internal/injection_container.dart';
import 'package:megaohm_app/presentation/bloc/get_data/get_data_bloc.dart';
import 'package:megaohm_app/presentation/ui/app_ui.dart';
import 'package:megaohm_app/presentation/widgets/dialogs/app_bottom_sheet.dart';
import 'package:megaohm_app/presentation/widgets/dialogs/choose_detail_type_dialog.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

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
                error: (message) => errorMessage = message,
                getData: (result) {
                  loading = false;
                  print(result);
                },
                loading: () => loading = true);
            return Scaffold(
              appBar: AppUI.appBar(context: context, title: "Умные теплицы"),
              body: Center(
                child: _buildChart(),
              ),
              floatingActionButton: _buildFloatingActionButton(),
            );
          },
        ),
      );

  _buildFloatingActionButton() => FloatingActionButton(
      onPressed: _openBottomSheet, child: const Icon(Icons.filter_alt_rounded));

  _openBottomSheet() {
    _buildInputDataDialog();
  }

  _buildChart() => loading
      ? const CircularProgressIndicator()
      : SfCartesianChart(
          primaryXAxis: CategoryAxis(),
          title: ChartTitle(text: 'Датчики'),
          legend: Legend(isVisible: true),
          series: <LineSeries<SalesData, String>>[
              LineSeries<SalesData, String>(
                  dataSource: <SalesData>[
                    SalesData('Jan', 35),
                    SalesData('Feb', 28),
                    SalesData('Mar', 34),
                    SalesData('Apr', 32),
                    SalesData('May', 40)
                  ],
                  xValueMapper: (SalesData sales, _) => sales.year,
                  yValueMapper: (SalesData sales, _) => sales.sales,
                  // Enable data label
                  dataLabelSettings: const DataLabelSettings(isVisible: true)),
            ]);

  _buildInputDataDialog() async {
    var result = await AppBottomSheet.showBottomSheet(
        "Выберите диапазон",
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
            labelText: "От",
            getInitValueFunc: () => _filterDateFrom,
            onChanged: (value) => _filterDateFrom = value));
  }

  _buildFilterDateTo() {
    return Expanded(
        child: _buildFilterDateFiled(
            labelText: "До",
            getInitValueFunc: () => _filterDateTo,
            onChanged: (value) => _filterDateTo = value));
  }

  _buildDiscreteButton() => Padding(
        padding: AppUI.bottomSheetContentPadding,
        child: OutlinedButton(
            onPressed: () async {
              var result =
                  await ChooseDetailTypeDialog.show(context, 'Тип детализации');
              if (result != null) {
                discrete = result;
              }
            },
            child: const Text('Тип детализации')),
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
        child: const Text("Отмена"),
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
      child: const Text("Применить"),
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
      format: DateFormat.yMd(),
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

class SalesData {
  SalesData(this.year, this.sales);

  final String year;
  final double sales;
}
