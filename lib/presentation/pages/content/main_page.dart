import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:megaohm_app/internal/injection_container.dart';
import 'package:megaohm_app/presentation/bloc/get_data/get_data_bloc.dart';
import 'package:megaohm_app/presentation/ui/app_ui.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<StatefulWidget> createState() => _MainPage();
}

class _MainPage extends State<MainPage> {
  final bloc = locator<GetDataBloc>();
  bool loading = true;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => bloc,
        child: BlocBuilder<GetDataBloc, GetDataState>(
          builder: (context, state) {
            return Scaffold(
              appBar: AppUI.appBar(context: context, title: "Умные теплицы"),
              body: Center(
                child: SfCartesianChart(
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
                          dataLabelSettings:
                              const DataLabelSettings(isVisible: true)),
                    ]),
              ),
            );
          },
        ),
      );
  _buildChart() {}

  _buildDataInputs() {}
}

class SalesData {
  SalesData(this.year, this.sales);

  final String year;
  final double sales;
}
