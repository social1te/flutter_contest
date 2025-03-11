import 'package:flutter/material.dart';
import 'package:untitled3/src/config/styles/colors.dart';

class OtherSneakerSmall extends StatelessWidget {
  const OtherSneakerSmall({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: AppColors.pictonBlue,
          )
        ),
        child: Image.asset('images/onboarding_second.png', fit: BoxFit.fill,),
      ),
    );
  }
}
