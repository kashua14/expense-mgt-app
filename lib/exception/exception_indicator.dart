import 'package:flutter/material.dart';

/// Basic layout for indicating that an exception occurred.
class ExceptionIndicator extends StatelessWidget {
  const ExceptionIndicator({
    required this.title,
    required this.assetName,
    required this.message,
    Key? key,
  }) : super(key: key);
  final String title;
  final String message;
  final String assetName;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text("Exception Occured"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(assetName),
              const SizedBox(height: 32),
              Text(
                title,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline6,
              ),
              const SizedBox(height: 16),
              Text(
                message,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      );
}
