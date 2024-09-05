import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatelessWidget {
  final String title;
  const CustomTextFieldWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelStyle: TextStyle(color: Theme.of(context).dividerColor),
        filled: true,
        fillColor: Theme.of(context).primaryColorLight,
        labelText: title,
      ),
    );
  }
}
