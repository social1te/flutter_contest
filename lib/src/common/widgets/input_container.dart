import 'package:flutter/material.dart';
import 'package:untitled3/src/config/styles/colors.dart';

class InputContainer extends StatelessWidget {
  const InputContainer({
    super.key,
    required this.hintText,
    this.label,
    this.iconData,
  });

  final String? label;
  final String hintText;
  final IconData? iconData;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label ?? ''),
        SizedBox(height: 12),
         Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: AppColors.cultured,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(14),
                  child: Text(
                    hintText,
                    style: TextStyle(
                      color: Colors.black.withOpacity(.5),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),

      ],
    );
  }
}
