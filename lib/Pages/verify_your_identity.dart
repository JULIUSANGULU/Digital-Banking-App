import 'package:digital_banking_app/Components/header_one.dart';
import 'package:digital_banking_app/Components/progressbar.dart';
import 'package:flutter/material.dart';

class VerifyYourIdentity extends StatefulWidget {
  const VerifyYourIdentity({super.key});

  @override
  State<VerifyYourIdentity> createState() => _VerifyYourIdentityState();
}

class _VerifyYourIdentityState extends State<VerifyYourIdentity> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 70, 0, 0),
            child: StepProgressIndicator(
              totalSteps: 5,
              currentStep: 0,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          HeaderOne(
            header: 'Choose the type of account that fits your needs.',
            textcolor: Color(0xFF979797),
          ),
          VerifyYourIdentity(),
        ],
      ),
    );
  }
}
