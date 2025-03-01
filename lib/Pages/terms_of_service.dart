import 'package:digital_banking_app/Components/header_one.dart';
import 'package:digital_banking_app/Components/progressbar.dart';
import 'package:digital_banking_app/Components/subheader_text.dart';
import 'package:flutter/material.dart';

class TermsOfService extends StatefulWidget {
  const TermsOfService({super.key});

  @override
  State<TermsOfService> createState() => _TermsOfServiceState();
}

class _TermsOfServiceState extends State<TermsOfService> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 70, 0, 0),
                child: StepProgressIndicator(
                  totalSteps: 5,
                  currentStep: 4,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              HeaderOne(
                header: 'Review and Agree to Our Terms',
                textcolor: Color(0xFF979797),
              ),
              SubheaderText(
                text:
                    'Please take a moment to review our policies to ensure your account is set up securely.',
                textcolor: Color(0xFF212121),
              ),
              SizedBox(
                height: 20,
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Welcome to',
                      style: TextStyle(
                        color: Color(0xFF212121),
                        fontSize: 20,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.w700,
                        height: 1.20,
                      ),
                    ),
                    TextSpan(
                      text: ' ',
                      style: TextStyle(
                        color: Color(0xFF212121),
                        fontSize: 20,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.w400,
                        height: 1.20,
                      ),
                    ),
                    TextSpan(
                      text: 'Bankr',
                      style: TextStyle(
                        color: Color(0xFF7B1FA2),
                        fontSize: 20,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.w700,
                        height: 1.20,
                      ),
                    ),
                    TextSpan(
                      text: '!\n',
                      style: TextStyle(
                        color: Color(0xFF7B1FA2),
                        fontSize: 20,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.w400,
                        height: 1.20,
                      ),
                    ),
                    TextSpan(
                      text:
                          'By using our platform, you agree to the following terms. Please review them carefully before proceeding.\n',
                      style: TextStyle(
                        color: Color(0xFF212121),
                        fontSize: 16,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.w400,
                        height: 1.50,
                      ),
                    ),
                    TextSpan(
                      text: '1. Eligibility\n',
                      style: TextStyle(
                        color: Color(0xFF212121),
                        fontSize: 16,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.w700,
                        height: 1.50,
                      ),
                    ),
                    TextSpan(
                      text: 'To create an account, you must:\n',
                      style: TextStyle(
                        color: Color(0xFF212121),
                        fontSize: 16,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.w400,
                        height: 1.50,
                      ),
                    ),
                    TextSpan(
                      text:
                          'Be at least 18 years old.\nProvide accurate and up-to-date information.\nComply with applicable laws while using our services.\n',
                      style: TextStyle(
                        color: Color(0xFF212121),
                        fontSize: 16,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.w400,
                        height: 1.50,
                      ),
                    ),
                    TextSpan(
                      text: '2. Privacy\n',
                      style: TextStyle(
                        color: Color(0xFF212121),
                        fontSize: 16,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.w700,
                        height: 1.50,
                      ),
                    ),
                    TextSpan(
                      text:
                          'Your information is safe with us. By continuing, you agree to our ',
                      style: TextStyle(
                        color: Color(0xFF212121),
                        fontSize: 16,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.w400,
                        height: 1.50,
                      ),
                    ),
                    TextSpan(
                      text: 'Privacy Policy',
                      style: TextStyle(
                        color: Color(0xFF212121),
                        fontSize: 16,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline,
                        height: 1.50,
                      ),
                    ),
                    TextSpan(
                      text: ' and the way we manage your data.\n',
                      style: TextStyle(
                        color: Color(0xFF212121),
                        fontSize: 16,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.w400,
                        height: 1.50,
                      ),
                    ),
                    TextSpan(
                      text: '3. Fees and Charges\n',
                      style: TextStyle(
                        color: Color(0xFF212121),
                        fontSize: 16,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.w700,
                        height: 1.50,
                      ),
                    ),
                    TextSpan(
                      text: 'Some transactions may include fees. Review our ',
                      style: TextStyle(
                        color: Color(0xFF212121),
                        fontSize: 16,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.w400,
                        height: 1.50,
                      ),
                    ),
                    TextSpan(
                      text: 'Fee Schedule',
                      style: TextStyle(
                        color: Color(0xFF212121),
                        fontSize: 16,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline,
                        height: 1.50,
                      ),
                    ),
                    TextSpan(
                      text: ' for details.\n',
                      style: TextStyle(
                        color: Color(0xFF212121),
                        fontSize: 16,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.w400,
                        height: 1.50,
                      ),
                    ),
                    TextSpan(
                      text: '4. User Responsibilities\n',
                      style: TextStyle(
                        color: Color(0xFF212121),
                        fontSize: 16,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.w700,
                        height: 1.50,
                      ),
                    ),
                    TextSpan(
                      text: 'You agree to:\n',
                      style: TextStyle(
                        color: Color(0xFF212121),
                        fontSize: 16,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.w400,
                        height: 1.50,
                      ),
                    ),
                    TextSpan(
                      text:
                          'Keep your login details secure.\nNotify us immediately of unauthorized access.\nUse the platform for lawful purposes only.\n',
                      style: TextStyle(
                        color: Color(0xFF212121),
                        fontSize: 16,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.w400,
                        height: 1.50,
                      ),
                    ),
                    TextSpan(
                      text: '5. Prohibited Activities\n',
                      style: TextStyle(
                        color: Color(0xFF212121),
                        fontSize: 16,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.w700,
                        height: 1.50,
                      ),
                    ),
                    TextSpan(
                      text: 'Do not:\n',
                      style: TextStyle(
                        color: Color(0xFF212121),
                        fontSize: 16,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.w400,
                        height: 1.50,
                      ),
                    ),
                    TextSpan(
                      text:
                          'Use our services for illegal or fraudulent activities.\nProvide false information or misrepresent your identity.\nInterfere with or disrupt our platform.\n',
                      style: TextStyle(
                        color: Color(0xFF212121),
                        fontSize: 16,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.w400,
                        height: 1.50,
                      ),
                    ),
                    TextSpan(
                      text: '6. Account Suspension\n',
                      style: TextStyle(
                        color: Color(0xFF212121),
                        fontSize: 16,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.w700,
                        height: 1.50,
                      ),
                    ),
                    TextSpan(
                      text:
                          'We may suspend or terminate your account if terms are violated.\n',
                      style: TextStyle(
                        color: Color(0xFF212121),
                        fontSize: 16,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.w400,
                        height: 1.50,
                      ),
                    ),
                    TextSpan(
                      text: '7. Updates to Terms\n',
                      style: TextStyle(
                        color: Color(0xFF212121),
                        fontSize: 16,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.w700,
                        height: 1.50,
                      ),
                    ),
                    TextSpan(
                      text:
                          'Our terms may change over time. We’ll notify you of significant updates.\n',
                      style: TextStyle(
                        color: Color(0xFF212121),
                        fontSize: 16,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.w400,
                        height: 1.50,
                      ),
                    ),
                    TextSpan(
                      text: '8. Limitation of Liability\n',
                      style: TextStyle(
                        color: Color(0xFF212121),
                        fontSize: 16,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.w700,
                        height: 1.50,
                      ),
                    ),
                    TextSpan(
                      text: 'Bankr',
                      style: TextStyle(
                        color: Color(0xFF7B1FA2),
                        fontSize: 16,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.w700,
                        height: 1.50,
                      ),
                    ),
                    TextSpan(
                      text: ' is not responsible for:\n',
                      style: TextStyle(
                        color: Color(0xFF212121),
                        fontSize: 16,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.w400,
                        height: 1.50,
                      ),
                    ),
                    TextSpan(
                      text:
                          'Losses due to unauthorized account access if caused by negligence.\nService interruptions or external third-party issues.\n',
                      style: TextStyle(
                        color: Color(0xFF212121),
                        fontSize: 16,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.w400,
                        height: 1.50,
                      ),
                    ),
                    TextSpan(
                      text: '9. Need Help?\n',
                      style: TextStyle(
                        color: Color(0xFF212121),
                        fontSize: 16,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.w700,
                        height: 1.50,
                      ),
                    ),
                    TextSpan(
                      text: 'Contact us anytime:\n',
                      style: TextStyle(
                        color: Color(0xFF212121),
                        fontSize: 16,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.w400,
                        height: 1.50,
                      ),
                    ),
                    TextSpan(
                      text: 'Email: support@bankr.com\nPhone: +1234567890',
                      style: TextStyle(
                        color: Color(0xFF212121),
                        fontSize: 16,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.w400,
                        height: 1.50,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
