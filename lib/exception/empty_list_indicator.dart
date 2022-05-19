import 'package:flutter/cupertino.dart';

import 'exception_indicator.dart';

/// Indicates that no items were found.
class EmptyListIndicator extends StatelessWidget {
  final String message;
  final String tittle;

  const EmptyListIndicator(
      {Key? key, required this.message, required this.tittle})
      : super(key: key);

  @override
  Widget build(BuildContext context) => ExceptionIndicator(
      title: tittle, message: message, assetName: 'assets/empty-box.png');
}
