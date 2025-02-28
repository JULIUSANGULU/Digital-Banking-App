import 'package:digital_banking_app/Components/button_lg.dart';
import 'package:digital_banking_app/Components/header_one.dart';
import 'package:digital_banking_app/Components/inputfield.dart';
import 'package:digital_banking_app/Components/progressbar.dart';
import 'package:digital_banking_app/Routes/routers.dart';
import 'package:flutter/material.dart';

class PersonalInfo extends StatefulWidget {
  const PersonalInfo({super.key});

  @override
  State<PersonalInfo> createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 70, 0, 0),
            child: StepProgressIndicator(
              totalSteps: 5,
              currentStep: 0,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const HeaderOne(
            header: 'Choose the type of account that fits your needs.',
            textcolor: Color(0xFF979797),
          ),
          const SizedBox(
            width: 299,
            child: SizedBox(
              width: 299,
              child: Text(
                'We need a few details to set up your account.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF212121),
                  fontSize: 14,
                  fontFamily: 'Open Sans',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                Inputfield(
                    label: 'First Name',
                    placeholder:
                        'Enter your full name as it appears on your ID'),
                SizedBox(
                  height: 10,
                ),
                Inputfield(
                    label: 'Last Name',
                    placeholder:
                        'Enter your Last name as it appears on your ID'),
                SizedBox(
                  height: 10,
                ),
                Inputfield(
                    label: 'Email Address',
                    placeholder: 'youremail@example.com'),
                SizedBox(
                  height: 10,
                ),
                Inputfield(
                    label: 'Nationality',
                    placeholder: 'Select your nationality'),
                SizedBox(
                  height: 10,
                ),
                Inputfield(
                    label: 'Phone Number', placeholder: '+234 901 744 6760'),
              ],
            ),
          ),
          const SizedBox(
            height: 44,
          ),
          GestureDetector(
            onTap: () async {
              await Navigator.pushNamed(context, AppRoutes.verifyyouridentity);
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
