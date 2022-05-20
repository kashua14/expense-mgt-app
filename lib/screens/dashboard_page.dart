import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../model/chart_dart.dart';
import '../theme/custom_colors.dart';
import '../theme/custom_theme.dart';
import '../theme/text_theme_x.dart';
import '../widgets/custom_draggable_sheet.dart';
import '../widgets/custom_legend.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  late ZoomPanBehavior _zoomPanBehavior;

  @override
  void initState() {
    _zoomPanBehavior = ZoomPanBehavior(
      enablePinching: true,
      enableMouseWheelZooming: true,
      enableDoubleTapZooming: true,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness:
            CustomTheme.isDarkModeOn() ? Brightness.light : Brightness.dark,
      ),
    );
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              _header(context),
              SfCartesianChart(
                zoomPanBehavior: _zoomPanBehavior,
                legend: Legend(
                    isVisible: true,
                    // alignment: ChartAlignment.far,
                    position: LegendPosition.bottom,
                    legendItemBuilder: (String name, dynamic series,
                        dynamic point, int index) {
                      return CustomLegend(name: name, index: index);
                    }),
                plotAreaBorderColor: Colors.transparent,
                primaryXAxis: CategoryAxis(
                  interval: 2,
                  majorGridLines: const MajorGridLines(width: 0),
                  majorTickLines: const MajorTickLines(size: 0),
                ),
                primaryYAxis: NumericAxis(
                  // labelFormat: '{value}M',
                  isVisible: false,
                  majorGridLines: const MajorGridLines(width: 0),
                  majorTickLines: const MajorTickLines(size: 0),
                ),
                series: <ChartSeries<ChartData, String>>[
                  LineSeries<ChartData, String>(
                    // groupName: 'Group A',
                    name: "Income",
                    dataSource: ChartData.chartData,
                    isVisibleInLegend: true,
                    animationDuration: 3000,
                    xValueMapper: (ChartData data, _) => data.x,
                    yValueMapper: (ChartData data, _) => data.y,
                    pointColorMapper: (ChartData data, _) => Colors.green,
                    // onCreateRenderer: (ChartSeries<ChartData, String> series) {
                    //   return CustomColumnSeriesRenderer();
                    // // },
                    width: 0.8,
                  ),
                  LineSeries<ChartData, String>(
                    // groupName: 'Group B',
                    name: "Expenses",
                    animationDuration: 3000,
                    animationDelay: 500,
                    dataSource: ChartData.chartData,
                    isVisibleInLegend: true,
                    xValueMapper: (ChartData data, _) => data.x,
                    yValueMapper: (ChartData data, _) => data.y2,
                    pointColorMapper: (ChartData data, _) => CustomColors.red,
                    width: 0.8,
                  ),
                ],
              )
            ],
          ),
        ),
        const CustomDraggableSheet(
          initialSize: 0.37,
          minSize: 0.37,
          maxSize: 0.7,
        ),
      ],
    );
  }

  Row _summaryReport(BuildContext context, IconData icon, Color backgroundColor,
      String reportType, String amount) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            color: backgroundColor,
            shape: BoxShape.circle,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(icon, color: Colors.white, size: 25),
          ),
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Total $reportType",
              style: context.subtitle1
                  ?.copyWith(fontSize: 18, color: CustomColors.grayDark),
            ),
            Text(
              "UGX $amount",
              style: context.subtitle1,
            )
          ],
        ),
      ],
    );
  }

  Column _header(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text("Hello, ",
                    style: context.headline4
                        ?.copyWith(color: CustomColors.grayDark)),
                Text.rich(
                  TextSpan(
                      text: "Kasasira ",
                      style: context.headline2?.copyWith(letterSpacing: 1.5),
                      children: [
                        TextSpan(text: "👋", style: context.headline2)
                      ]),
                )
              ],
            ),
            const SizedBox(
              height: 50,
              width: 50,
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/myPic.png"),
              ),
            )
          ],
        ),
        const SizedBox(height: 25.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _summaryReport(context, Icons.arrow_upward, Colors.green, "Income",
                "200,345.00"),
            _summaryReport(context, Icons.arrow_downward, Colors.red,
                "Expenses", "100,345.00")
          ],
        ),
      ],
    );
  }
}
