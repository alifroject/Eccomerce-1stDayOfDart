import 'package:flutter/material.dart';
import 'views/onboarding/welcome_screen.dart';
import 'views/onboarding/agreement_screen.dart';
import 'views/onboarding/login_screen.dart';
import 'views/onboarding/signup_screen.dart';
import 'views/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/welcome',
      routes: {
        '/welcome': (context) => const WelcomeScreen(),
        '/agreement': (context) => const AgreementScreen(),
        '/login': (context) => const LoginScreen(),
        '/signup': (context) => const SignupScreen(),
        '/home': (context) => const MainScreen(), // Dummy home screen
      },
    );
  }
}


