import 'package:flutter/material.dart';
import 'package:untitled3/src/features/auth/view/authorization_screen.dart';
import 'package:untitled3/src/features/main/main_wrapper.dart';

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
      },
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      debugShowCheckedModeBanner: false,
      home: MainWrapper(),
    );
  }
}
