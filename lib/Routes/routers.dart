import 'package:digital_banking_app/Pages/Login_with_fingerpint.dart';
import 'package:digital_banking_app/Pages/account_type_one.dart';
import 'package:flutter/material.dart';
import 'package:digital_banking_app/Pages/login.dart';
import 'package:digital_banking_app/Pages/Createaccount.dart';
import 'package:digital_banking_app/Pages/onboardingscreen_one.dart';

class AppRoutes {
  static const String onboarding = '/onboarding';
  static const String login = '/login';
  static const String signup = '/signup';
  static const String loginwithfingerprint = '/loginwithfingerprint';
  static const String accounttype = '/accounttype';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case onboarding:
        return MaterialPageRoute(builder: (_) => const OnboardingscreenOne());
      case login:
        return MaterialPageRoute(builder: (_) => const Login());
      case signup:
        return MaterialPageRoute(builder: (_) => const CreateAccount());
      case loginwithfingerprint:
        return MaterialPageRoute(builder: (_) => const LoginWithFingerpint());
      case accounttype:
        return MaterialPageRoute(builder: (_) => const AccountTypeOne());
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text('Page not found')),
          ),
        );
    }
  }
}
