import 'package:flutter/material.dart';

class AppTextInputField extends StatelessWidget {
  const AppTextInputField({
    this.hintText = "",
    this.labelText = "",
    super.key,
  });
  final String hintText;
  final String labelText;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextField(
        textCapitalization: TextCapitalization.sentences,
        decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 13, horizontal: 20),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              width: 1,
            ),
          ),
        ),
      ),
    );
  }
}
