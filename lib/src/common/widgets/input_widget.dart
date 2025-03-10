import 'package:flutter/material.dart';
import 'package:untitled3/src/config/styles/colors.dart';

class InputWidget extends StatelessWidget {
  const InputWidget({
    super.key,
    required this.hintText,
    this.label,
    this.iconData,
    required this.obscureText,
    required this.controller,
  });

  final String? label;
  final String hintText;
  final IconData? iconData;
  final bool obscureText;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label ?? ''),
        SizedBox(height: 12),
        TextField(
          controller: controller,
          obscureText: obscureText,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(
              color: Colors.black.withOpacity(.5),
            ),
            filled: true,
            fillColor: AppColors.cultured,
            suffix: Icon(iconData),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
      ],
    );
  }
}
