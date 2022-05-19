import 'package:flutter/material.dart';

class ChartData {
  ChartData(
      {this.x,
      this.y,
      this.xValue,
      this.yValue,
      this.y2,
      this.y2Value,
      this.secondSeriesYValue,
      this.thirdSeriesYValue,
      this.pointColor,
      this.size,
      this.text,
      this.open,
      this.close,
      this.low,
      this.high,
      this.volume});

  /// Holds x value of the datapoint
  final dynamic x;

  /// Holds y value of the datapoint
  final num? y;

  /// Holds y2 value of the datapoint
  final num? y2;

  /// Holds x value of the datapoint
  final dynamic xValue;

  /// Holds y value of the datapoint
  final num? yValue;

  /// Holds y2 value of the datapoint
  final num? y2Value;

  /// Holds y value of the datapoint(for 2nd series)
  final num? secondSeriesYValue;

  /// Holds y value of the datapoint(for 3nd series)
  final num? thirdSeriesYValue;

  /// Holds point color of the datapoint
  final Color? pointColor;

  /// Holds size of the datapoint
  final num? size;

  /// Holds datalabel/text value mapper of the datapoint
  final String? text;

  /// Holds open value of the datapoint
  final num? open;

  /// Holds close value of the datapoint
  final num? close;

  /// Holds low value of the datapoint
  final num? low;

  /// Holds high value of the datapoint
  final num? high;

  /// Holds open value of the datapoint
  final num? volume;


  static final chartData = <ChartData>[
    ChartData(
      x: 'Jan',
      y: 13.46,
      y2: 9.1,
    ),
    ChartData(
      x: 'Feb',
      y: 9.18,
      y2: 3,
    ),
    ChartData(
      x: 'Mar',
      y: 4.56,
      y2: 9.1,
    ),
    ChartData(
      x: 'Apr',
      y: 5.29,
      y2: 9.1,
    ),
    ChartData(
      x: 'Jun',
      y: 6.29,
      y2: 9,
    ),
    ChartData(
      x: 'July',
      y: 6.29,
      y2: 2,
    ),
    ChartData(
      x: 'Aug',
      y: 6.29,
      y2: 3,
    ),
    ChartData(
      x: 'Sep',
      y: 12.54,
      y2: 13.46,
    ),
    ChartData(
      x: 'Oct',
      y: 6.29,
      y2: 2,
    ),
    ChartData(
      x: 'Nov',
      y: 6,
      y2: 3,
    ),
    ChartData(
      x: 'Dec',
      y: 1.54,
      y2: 3.46,
    ),
  ];

}
