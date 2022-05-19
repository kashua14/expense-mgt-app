
import 'package:e_kitabo/routes/app_routes.dart';
import 'package:e_kitabo/theme/text_theme_x.dart';
import 'package:flutter/material.dart';

import '../theme/custom_colors.dart';
import 'card_button.dart';
import 'password_field.dart';

class AuthFormFields extends StatefulWidget {
  const AuthFormFields({
    Key? key,
  }) : super(key: key);

  @override
  State<AuthFormFields> createState() => _AuthFormFieldsState();
}

class _AuthFormFieldsState extends State<AuthFormFields> {

  final TextEditingController _emailController = TextEditingController();

  String? _password;
  String? _email;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: _emailController,
          decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: CustomColors.blackLight,
                ),
                borderRadius: BorderRadius.circular(10),
              ),

              filled: true,
              labelText: 'Email *',
              // hintText: 'Your email address'
          ),
          keyboardType: TextInputType.emailAddress,
          onSaved: (String? value){
            _email = value;
          },
        ),
        const SizedBox(height: 10),
        PasswordField(
          labelText: "Password *",
          onFieldSubmitted: (String value) {
            setState(() {
              _password = value;
            });
          },
        ),const SizedBox(height: 20),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 60,
              width: 170,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed(AppRoutes.kDashboard);
                },
                child: Text(
                  "LOGIN",
                  style: context.headline6?.copyWith(
                    letterSpacing: 1.5,
                    color: CustomColors.blackLight,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            CardButton(icon: Icons.facebook, onPressed: () {}),
            CardButton(icon: Icons.mail, onPressed: () {}),
          ],
        ),
      ],
    );
  }
}
