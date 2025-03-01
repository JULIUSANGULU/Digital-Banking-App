import 'package:digital_banking_app/Pages/Login_with_fingerpint.dart';
import 'package:digital_banking_app/Pages/account_type_one.dart';
import 'package:digital_banking_app/Pages/address_details.dart';
import 'package:digital_banking_app/Pages/personal_info.dart';
import 'package:digital_banking_app/Pages/terms_of_service.dart';
import 'package:digital_banking_app/Pages/verify_your_identity.dart';
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
  static const String personalinfo = '/personalinfo';
  static const String verifyyouridentity = '/verifyyouridentity';
  static const String addressdetails = '/addressdetails';
  static const String termsofservice = '/termsofservice';

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
      case personalinfo:
        return MaterialPageRoute(builder: (_) => const PersonalInfo());
      case verifyyouridentity:
        return MaterialPageRoute(builder: (_) => const VerifyYourIdentity());
      case addressdetails:
        return MaterialPageRoute(builder: (_) => const AddressDetails());
      case termsofservice:
        return MaterialPageRoute(builder: (_) => const TermsOfService());
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text('Page not found')),
          ),
        );
    }
  }
}
