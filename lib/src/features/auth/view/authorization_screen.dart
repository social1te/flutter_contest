import 'package:flutter/material.dart';
import 'package:untitled3/main.dart';
import 'package:untitled3/src/common/widgets/input_widget.dart';
import 'package:untitled3/src/config/styles/colors.dart';

class AuthorizationScreen extends StatefulWidget {
  const AuthorizationScreen({super.key});

  @override
  State<AuthorizationScreen> createState() => _AuthorizationScreenState();
}

class _AuthorizationScreenState extends State<AuthorizationScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Привет!',
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
            SizedBox(
              height: 30,
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
              hintText: '•••',
              iconData: Icons.visibility_off,
              obscureText: true,
              controller: passwordController,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                  child: Text(
                    'Восстановить',
                    style: TextStyle(
                        fontSize: 12, color: AppColors.auroMetalSaurus),
                  ),
                  onPressed: ()=> Navigator.of(context).pushNamed('/forgot'),
                ),
              ],
            ),
            SizedBox(height: 24),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: ()=> Navigator.of(context).pushNamed('/onboarding'),
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
                      child: Text('Войти'),
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
                  'Вы впервые?',
                  style: TextStyle(color: AppColors.dimGray, fontSize: 16),
                ),
                TextButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    'Создать аккаунт',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  onPressed: ()=> Navigator.of(context).pushNamed('/reg'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
