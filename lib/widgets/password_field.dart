import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({
    this.passwordController,
    this.fieldKey,
    this.hintText,
    this.labelText,
    this.helpText,
    this.onSaved,
    this.validator,
    required this.onFieldSubmitted,
  }) : super(key: fieldKey);

  final Key? fieldKey;
  final String? hintText;
  final String? labelText;
  final String? helpText;
  final FormFieldSetter<String>? onSaved;
  final FormFieldValidator<String>? validator;
  final TextEditingController? passwordController;
  final ValueChanged<String>? onFieldSubmitted;

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _isObscured = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: widget.fieldKey,
      obscureText: _isObscured,
      onSaved: widget.onSaved,
      validator: widget.validator,
      onFieldSubmitted: widget.onFieldSubmitted,
      keyboardType: TextInputType.visiblePassword,
      controller: widget.passwordController,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          filled: true,
          labelText: widget.labelText,
          hintText: widget.hintText,
          helperText: widget.helpText,
          suffixIcon: GestureDetector(
            onTap: () {
              setState(() {
                _isObscured = !_isObscured;
              });
            },
            child: Icon(_isObscured ? Icons.visibility : Icons.visibility_off),
          )),
    );
  }
}
