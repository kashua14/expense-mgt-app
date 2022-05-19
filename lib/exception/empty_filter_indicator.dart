import 'package:flutter/cupertino.dart';

import 'exception_indicator.dart';

/// Indicates that no items were found.
class EmptyFilterIndicator extends StatelessWidget {
  const EmptyFilterIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ExceptionIndicator(
      title: 'Too much filtering',
      message: 'We couldn\'t find any results matching your applied filters.',
      assetName: 'assets/empty-box.png',
    );
  }
}
