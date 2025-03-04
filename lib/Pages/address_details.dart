import 'package:digital_banking_app/Components/button_lg.dart';
import 'package:digital_banking_app/Components/header_one.dart';
import 'package:digital_banking_app/Components/inputfield.dart';
import 'package:digital_banking_app/Components/inputfield_dropdown.dart';
import 'package:digital_banking_app/Components/progressbar.dart';
import 'package:digital_banking_app/Components/subheader_text.dart';
import 'package:digital_banking_app/Routes/routers.dart';
import 'package:flutter/material.dart';

class AddressDetails extends StatefulWidget {
  const AddressDetails({super.key});

  @override
  State<AddressDetails> createState() => _AddressDetailsState();
}

class _AddressDetailsState extends State<AddressDetails> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 70, 0, 0),
                child: StepProgressIndicator(
                  totalSteps: 5,
                  currentStep: 3,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const HeaderOne(
                header: 'We Need Your Address',
                textcolor: Color(0xFF979797),
              ),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: SubheaderText(
                  text:
                      'Adding your address helps us complete your profile and meet regulatory requirements.',
                  textcolor: Color(0xFF212121),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Column(
                children: [
                  Inputfield(
                      label: 'Street address',
                      placeholder: 'Enter your house number and street name'),
                  SizedBox(
                    height: 10,
                  ),
                  InputfieldDropdown(
                    label: 'State',
                    placeholder: 'Enter your state or province',
                    options: [],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  InputfieldDropdown(
                    label: 'City',
                    placeholder: 'Enter your city',
                    options: ['Abuja', 'Lagos'],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Inputfield(
                      label: 'Zip or postal code',
                      placeholder: 'Enter your zip or postal code'),
                ],
              ),
              const SizedBox(
                height: 88,
              ),
              GestureDetector(
                onTap: () async {
                  await Navigator.pushNamed(context, AppRoutes.termsofservice);
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
        ),
      ),
    );
  }
}
