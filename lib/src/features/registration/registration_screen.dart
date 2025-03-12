import 'package:flutter/material.dart';
import 'package:untitled3/src/common/widgets/input_widget.dart';
import 'package:untitled3/src/config/styles/colors.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

final nameController = TextEditingController();
final emailController = TextEditingController();
final passwordController = TextEditingController();
bool isChecked = false;

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Регистрация',
              style: TextStyle(fontSize: 32),
            ),
            SizedBox(height: 8),
            Text(
              textAlign: TextAlign.center,
              'Заполните Свои Данные Или Продолжите Через Социальные Медиа',
              style: TextStyle(
                fontSize: 16,
                color: AppColors.auroMetalSaurus,
              ),
            ),
            InputWidget(
              label: 'Ваше имя',
              hintText: 'ХХХХХ',
              obscureText: false,
              controller: nameController,
            ),
            SizedBox(
              height: 25,
            ),
            InputWidget(
              label: 'Email',
              hintText: 'xyz@gmail.com',
              obscureText: false,
              controller: emailController,
            ),
            SizedBox(height: 25),
            InputWidget(
              label: 'Пароль',
              hintText: '•••••••••',
              iconData: Icons.visibility_off,
              obscureText: true,
              controller: passwordController,
            ),
            SizedBox(height: 24),
            Row(
              children: [
                Checkbox(
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                      print(isChecked);
                    }),
                TextButton(
                  child: Text(
                    'Даю согласие на обработку персональных данных',
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 16,
                        color: Colors.black),
                  ),
                  onPressed: () =>
                      Navigator.of(context).pushNamed('/personal_data'),
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () => isChecked == true &&
                            emailController.text.isNotEmpty &&
                            passwordController.text.isNotEmpty &&
                            nameController.text.isNotEmpty
                        ? Navigator.of(context).pushNamed('/onboarding')
                        : showDialog(
                            context: context,
                            builder: (BuildContext context) => AlertDialog(
                              title: Text('Пожалуйста, заполните все поля'),
                            ),
                          ),
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
                      child: Text('Зарегистрироваться'),
                    ),
                  ),
                ),
              ],
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Есть аккаунт?',
                  style: TextStyle(color: AppColors.dimGray, fontSize: 16),
                ),
                TextButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    'Войти',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
