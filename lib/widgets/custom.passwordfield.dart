import 'package:flutter/material.dart';

class CustomPasswordfield extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final bool visible;
  const CustomPasswordfield(
      {Key key,
      this.label: 'Password',
      @required this.controller,
      this.visible: false})
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
          obscureText: this.visible,
          controller: this.controller,
          keyboardType: TextInputType.text,
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
