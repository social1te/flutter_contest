import 'package:flutter/material.dart';
import 'package:untitled3/src/features/%20onboarding/onboarding_screen.dart';
import 'package:untitled3/src/features/auth/view/authorization_screen.dart';
import 'package:untitled3/src/features/auth/view/forgot_password_screen.dart';
import 'package:untitled3/src/features/auth/view/new_password_screen.dart';
import 'package:untitled3/src/features/auth/view/otp_validation_screen.dart';
import 'package:untitled3/src/features/cart/purchasing_screen.dart';
import 'package:untitled3/src/features/details/view/details_screen.dart';
import 'package:untitled3/src/features/main/main_wrapper.dart';
import 'package:untitled3/src/features/personal_data/personal_data_screen.dart';
import 'package:untitled3/src/features/registration/registration_screen.dart';
import 'package:untitled3/src/features/settings/settings_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: (settings) {
        if (settings.name == '/main') {
          return MaterialPageRoute(
            builder: (context) => MainWrapper(),
          );
        }
        if (settings.name == '/onboarding') {
          return MaterialPageRoute(
            builder: (context) => Second(),
          );
        }
        if (settings.name == '/second') {
          return MaterialPageRoute(
            builder: (context) => Second(),
          );
        }
        if (settings.name == '/third') {
          return MaterialPageRoute(
            builder: (context) => Third(),
          );
        }
        if (settings.name == '/settings') {
          return MaterialPageRoute(
            builder: (context) => SettingsScreen(),
          );
        }
        if (settings.name == '/reg') {
          return MaterialPageRoute(
            builder: (context) => RegistrationScreen(),
          );
        }
        if (settings.name == '/personal_data') {
          return MaterialPageRoute(
            builder: (context) => PersonalDataScreen(),
          );
        }
        if (settings.name == '/forgot') {
          return MaterialPageRoute(
            builder: (context) => ForgotPasswordScreen(),
          );
        }
        if (settings.name == '/otp') {
          return MaterialPageRoute(
            builder: (context) => OtpValidationScreen(),
          );
        }
        if (settings.name == '/new_password') {
          return MaterialPageRoute(
            builder: (context) => NewPasswordScreen(),
          );
        }
        if (settings.name == '/purchasing') {
          return MaterialPageRoute(
            builder: (context) => PurchasingScreen(),
          );
        }
      },

      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      debugShowCheckedModeBanner: false,
      home: AuthorizationScreen(),
    );
  }
}
