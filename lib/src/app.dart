import 'package:flutter/material.dart';
import 'package:untitled3/src/features/%20onboarding/onboarding_screen.dart';
import 'package:untitled3/src/features/auth/view/authorization_screen.dart';
import 'package:untitled3/src/features/details/view/details_screen.dart';
import 'package:untitled3/src/features/main/main_wrapper.dart';
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
      },
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      debugShowCheckedModeBanner: false,
      home: AuthorizationScreen(),
    );
  }
}
