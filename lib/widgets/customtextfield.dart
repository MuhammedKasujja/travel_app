import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  final String label;
  final TextInputType inputType;
  final TextEditingController controller;
  const CustomTextfield(
      {Key key,
      this.label,
      this.inputType: TextInputType.text,
      @required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 8,
      ),
      child: Container(
        child: TextFormField(
          controller: this.controller,
          keyboardType: this.inputType,
          decoration: InputDecoration(
            label: Text(this.label),
          ),
          validator: (String value) {
            if (value.isEmpty) {
              return 'Please enter some text';
            }
            return null;
          },
        ),
      ),
    );
  }
}
