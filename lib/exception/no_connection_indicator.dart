import 'package:flutter/cupertino.dart';

import 'exception_indicator.dart';

/// Indicates that a connection error occurred.
class NoConnectionIndicator extends StatelessWidget {
  const NoConnectionIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const ExceptionIndicator(
        title: 'No connection',
        message: 'Please check internet connection and try again.',
        assetName: 'assets/frustrated-face.png',
      );
}
