import 'package:digital_banking_app/Components/account_type_selector.dart';
import 'package:digital_banking_app/Components/button_lg.dart';
import 'package:digital_banking_app/Components/header_one.dart';
import 'package:digital_banking_app/Components/modal_component.dart';
import 'package:digital_banking_app/Components/progressbar.dart';
import 'package:digital_banking_app/Routes/routers.dart';
import 'package:flutter/material.dart';

class AccountTypeOne extends StatefulWidget {
  const AccountTypeOne({super.key});

  @override
  State<AccountTypeOne> createState() => _AccountTypeOneState();
}

class _AccountTypeOneState extends State<AccountTypeOne> {
  String selectedAccountType = "Personal"; // Default account type

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
          const SizedBox(height: 20),
          const HeaderOne(
            header: 'Choose the type of account that fits your needs.',
            textcolor: Color(0xFF979797),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 50, 0, 0),
            child: Row(
              children: [
                AccountTypeSelector(
                  label: 'Personal account',
                  imagePath: 'lib/assets/images/image2.png',
                  isSelected: selectedAccountType == "Personal",
                  onTap: () {
                    setState(() {
                      selectedAccountType = "Personal";
                    });
                  },
                ),
                const SizedBox(width: 50),
                AccountTypeSelector(
                  label: 'Business account',
                  imagePath: 'lib/assets/images/image3.png',
                  isSelected: selectedAccountType == "Business",
                  onTap: () {
                    setState(() {
                      selectedAccountType = "Business";
                    });
                  },
                ),
              ],
            ),
          ),
          const SizedBox(height: 200),

          // Dynamic message based on selection
          ModalComponent(
            text: selectedAccountType == "Personal"
                ? 'Perfect for everyday banking needs, savings, and payments.'
                : 'Great for managing business finances and transactions.',
          ),

          const SizedBox(height: 25),

          // Proceed Button - Passes account type to the next screen
          GestureDetector(
            onTap: () async {
              await Navigator.pushNamed(
                context,
                AppRoutes.personalinfo,
                arguments: {
                  "accountType": selectedAccountType
                }, // Pass selection
              );
            },
            child: const ButtonLg(
              name: 'Proceed',
              color: Color(0xFF1976D2),
              textColor: Color(0xFFF5F5F5),
            ),
          ),

          const SizedBox(height: 16),

          // Go Back Button
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
