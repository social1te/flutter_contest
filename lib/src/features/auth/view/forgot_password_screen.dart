import 'package:flutter/material.dart';
import 'package:untitled3/src/common/widgets/input_widget.dart';
import 'package:untitled3/src/config/styles/colors.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

final emailController = TextEditingController();

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 65,),
              Text(
                'Забыл пароль',
                style: TextStyle(fontSize: 32),
              ),
              Text(
                'Введите свою учетную запись для сброса',
                style:
                    TextStyle(fontSize: 16, color: AppColors.auroMetalSaurus),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40),
                child: InputWidget(
                  hintText: 'xyz@gmail.com',
                  obscureText: false,
                  controller: emailController,
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () => emailController.text.isNotEmpty
                          ? showDialog(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                title: Column(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: AppColors.pictonBlue,
                                      foregroundColor: Colors.white,
                                      child: Icon(Icons.mail),
                                    ),
                                    SizedBox(height: 25),
                                    Text(
                                      'Проверьте ваш Email',
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      textAlign: TextAlign.center,
                                      'Мы отправили код восстановления пароля на вашу почту',
                                      style: TextStyle(
                                          color: AppColors.auroMetalSaurus,
                                          fontSize: 16),
                                    ),
                                  ],
                                ),
                                actions: [
                                  IconButton(
                                    onPressed: () =>
                                        Navigator.of(context).pushNamed('/otp'),
                                    icon: Icon(Icons.arrow_forward_ios_rounded),
                                  ),
                                ],
                                backgroundColor: Colors.white,
                              ),
                            )
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
                        child: Text('Отправить'),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
