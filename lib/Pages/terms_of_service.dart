import 'package:digital_banking_app/Components/button_lg.dart';
import 'package:digital_banking_app/Components/header_one.dart';
import 'package:digital_banking_app/Components/progressbar.dart';
import 'package:digital_banking_app/Components/subheader_text.dart';
import 'package:digital_banking_app/Components/textspan.dart';
import 'package:digital_banking_app/Routes/routers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TermsOfService extends StatefulWidget {
  const TermsOfService({super.key});

  @override
  State<TermsOfService> createState() => _TermsOfServiceState();
}

class _TermsOfServiceState extends State<TermsOfService> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const SingleChildScrollView(
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
                  Textspan(),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              width: 430,
              height: 210,
              padding: const EdgeInsets.only(
                top: 41,
                left: 30,
                right: 0,
                bottom: 41,
              ),
              clipBehavior: Clip.antiAlias,
              decoration: const BoxDecoration(color: Colors.white),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 380,
                    height: double.infinity,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () async {
                            await Navigator.pushNamed(
                                context, AppRoutes.success);
                          },
                          child: const ButtonLg(
                            name: 'Proceed',
                            color: Color(0xFF1976D2),
                            textColor: Color(0xFFF5F5F5),
                          ),
                        ),
                        const SizedBox(height: 16),
                        GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: const ButtonLg(
                              name: 'Go back',
                              color: Color(0xFFF5F5F5),
                              textColor: Colors.black),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
