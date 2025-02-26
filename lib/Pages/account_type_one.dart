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
      body: Center(
        child: StepProgressIndicator(
          totalSteps: 1,
          currentStep: 1,
        ),
      ),
    );
  }
}
