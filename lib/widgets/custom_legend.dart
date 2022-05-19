import 'package:flutter/material.dart';

class CustomLegend extends StatelessWidget {
  final int index;
  final String name;
  const CustomLegend({
    Key? key, required this.index, required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      width: MediaQuery.of(context).size.width*0.2,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            height:7,
            width: 7,
            margin: const EdgeInsets.only(right: 5),
            decoration: BoxDecoration(
              color: index == 0 ? Colors.green : Colors.red,
            ),
          ),
          Text(name),
        ],
      ),
    );
  }
}
