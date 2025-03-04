import 'package:digital_banking_app/Components/button_lg.dart';
import 'package:digital_banking_app/Components/header_one.dart';
import 'package:digital_banking_app/Components/inputfield_selector.dart';
import 'package:digital_banking_app/Components/progressbar.dart';
import 'package:digital_banking_app/Components/subheader_text.dart';
import 'package:digital_banking_app/Routes/routers.dart';
import 'package:flutter/material.dart';

class VerifyYourIdentity extends StatefulWidget {
  const VerifyYourIdentity({super.key});

  @override
  State<VerifyYourIdentity> createState() => _VerifyYourIdentityState();
}

class _VerifyYourIdentityState extends State<VerifyYourIdentity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 70, 0, 0),
            child: StepProgressIndicator(
              totalSteps: 5,
              currentStep: 1,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const HeaderOne(
            header: 'Verify Your Identity',
            textcolor: Color(0xFF979797),
          ),
          const SubheaderText(
            text:
                'We need a government-issued ID to ensure your account\'s security and comply with regulations.',
            textcolor: Color(0xFF212121),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                InputfieldSelector(label: 'BVN'),
                SizedBox(
                  height: 20,
                ),
                InputfieldSelector(label: 'Driver\'s license'),
                SizedBox(
                  height: 20,
                ),
                InputfieldSelector(label: 'National ID card'),
                SizedBox(
                  height: 20,
                ),
                InputfieldSelector(label: 'Voter\'s card')
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 131, 150, 0),
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'You should see our ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.w400,
                      height: 1.50,
                    ),
                  ),
                  TextSpan(
                    text: 'privacy policy',
                    style: TextStyle(
                      color: Color(0xFF7B1FA2),
                      fontSize: 14,
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.underline,
                      height: 1.50,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: () async {
              await Navigator.pushNamed(context, AppRoutes.addressdetails);
            },
            child: const ButtonLg(
              name: 'Proceed',
              color: Color(0xFF1976D2),
              textColor: Color(0xFFF5F5F5),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: const ButtonLg(
              name: 'Go back',
              color: Color(0xFFF5F5F5),
              textColor: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
