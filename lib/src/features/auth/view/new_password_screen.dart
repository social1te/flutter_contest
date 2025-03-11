import 'package:flutter/material.dart';
import 'package:untitled3/src/common/widgets/input_widget.dart';
import 'package:untitled3/src/config/styles/colors.dart';

class NewPasswordScreen extends StatefulWidget {
  const NewPasswordScreen({super.key});

  @override
  State<NewPasswordScreen> createState() => _NewPasswordScreenState();
}

final passwordController = TextEditingController();
final confirmPasswordController = TextEditingController();

class _NewPasswordScreenState extends State<NewPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Новый пароль',
              style: TextStyle(
                fontSize: 32,
              ),
            ),
            Text(
              'Введите новый пароль',
              style: TextStyle(
                fontSize: 16,
                color: AppColors.auroMetalSaurus,
              ),
            ),
            InputWidget(
              label: 'Новый пароль',
              hintText: '•••••••••',
              obscureText: true,
              controller: passwordController,
            ),
            InputWidget(
              label: 'Подтвердите пароль',
              hintText: '•••••••••',
              obscureText: true,
              controller: confirmPasswordController,
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: ()=> Navigator.of(context).pushNamed('/main'),
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
                      child: Text('Сохранить'),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
