import 'package:digital_banking_app/Components/account_type_selector.dart';
import 'package:digital_banking_app/Components/button_lg.dart';
import 'package:digital_banking_app/Components/header_one.dart';
import 'package:digital_banking_app/Components/modal_component.dart';
import 'package:digital_banking_app/Components/progressbar.dart';
import 'package:flutter/material.dart';

class AccountTypeOne extends StatefulWidget {
  const AccountTypeOne({super.key});

  @override
  State<AccountTypeOne> createState() => _AccountTypeOneState();
}

class _AccountTypeOneState extends State<AccountTypeOne> {
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
          Padding(
            padding: EdgeInsets.fromLTRB(25, 50, 0, 0),
            child: Row(
              children: [
                AccountTypeSelector(
                    label: 'Personal account',
                    imagePath: 'lib/assets/images/image2.png'),
                SizedBox(
                  width: 50,
                ),
                AccountTypeSelector(
                    label: 'Business account',
                    imagePath: 'lib/assets/images/image3.png'),
              ],
            ),
          ),
          SizedBox(
            height: 200,
          ),
          ModalComponent(
            text: 'Perfect for everyday banking needs, savings, and payments.',
          ),
          SizedBox(
            height: 25,
          ),
          ButtonLg(
            name: 'Proceed',
            color: Color(0xFF1976D2),
            textColor: Color(0xFFF5F5F5),
          ),
          SizedBox(
            height: 16,
          ),
          ButtonLg(
            name: 'Go back',
            color: Color(0xFFF5F5F5),
            textColor: Colors.black,
          ),
        ],
      ),
    );
  }
}
