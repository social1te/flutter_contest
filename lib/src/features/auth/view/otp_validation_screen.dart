import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:untitled3/src/config/styles/colors.dart';

class OtpValidationScreen extends StatelessWidget {
  const OtpValidationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 65,),
          Text(
            'OTP Проверка',
            style: TextStyle(fontSize: 32),
          ),
          Text(
            'Проверьте свою электронную почту, чтобы увидеть код подтверждения',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: AppColors.auroMetalSaurus,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 70),
            child: Row(
              children: [
                Text(
                  'OTP Код',
                  style: TextStyle(fontSize: 21),
                )
              ],
            ),
          ),
          SizedBox(height: 20),
          OtpTextField(
            filled: true,
            fillColor: AppColors.cultured,
            focusedBorderColor: AppColors.bitterSweet,
            showFieldAsBox: true,
            borderRadius: BorderRadius.circular(12),
            numberOfFields: 6,
            fieldWidth: 52,
            fieldHeight: 100,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 70),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: ()=> Navigator.of(context).pushNamed('/new_password'),
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      foregroundColor: Colors.white,
                      backgroundColor: AppColors.pictonBlue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(14),
                      child: Text('Отправить'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
