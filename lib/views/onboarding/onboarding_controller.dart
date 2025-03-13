import 'package:flutter/material.dart';
import 'welcome_screen.dart';
import 'agreement_screen.dart';
import 'login_screen.dart';
import 'signup_screen.dart';

class OnboardingController extends StatefulWidget {
  @override
  _OnboardingControllerState createState() => _OnboardingControllerState();
}

class _OnboardingControllerState extends State<OnboardingController> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: const [
          WelcomeScreen(),
          AgreementScreen(),
          LoginScreen(),
          SignupScreen(),
        ],
      ),
    );
  }
}
