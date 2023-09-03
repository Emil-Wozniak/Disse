import 'package:flutter/material.dart';

class StyledTextField extends StatelessWidget {
  const StyledTextField(
      {super.key,
      required this.text,
      this.length = 20,
      required this.keyboardType,
      this.icon = const Icon(Icons.abc),
      this.textColor = const TextStyle(color: Colors.black),
      this.iconColor = Colors.orangeAccent,
      this.borderColor = Colors.orange});
  final int length;
  final TextInputType keyboardType;
  final Widget text;
  final Widget icon;
  final TextStyle textColor;
  final Color iconColor;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            maxLength: length,
            keyboardType: keyboardType,
            decoration: InputDecoration(
              border: InputBorder.none,
              label: text,
              labelStyle: textColor,
              prefixIcon: icon,
              prefixIconColor: iconColor,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: borderColor),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
