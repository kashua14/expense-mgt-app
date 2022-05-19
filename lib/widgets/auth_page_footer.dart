
import 'package:e_kitabo/theme/text_theme_x.dart';
import 'package:flutter/material.dart';

class AuthPageFooter extends StatelessWidget {
  const AuthPageFooter({
    Key? key, required this.route, required this.btnText,
  }) : super(key: key);

  final String route;
  final String btnText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      children: [
        Image.asset("assets/images/line-dots.png"),
        TextButton(
          child: Text(
           btnText,
            style: context.bodyText2
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          onPressed: () {
            Navigator.of(context)
                .pushNamed(route);
          },
        )
      ],
    );
  }
}
