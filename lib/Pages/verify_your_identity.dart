import 'dart:io';
import 'package:digital_banking_app/Components/button_lg.dart';
import 'package:digital_banking_app/Components/header_one.dart';
import 'package:digital_banking_app/Components/inputfield_radio.dart';
import 'package:digital_banking_app/Components/progressbar.dart';
import 'package:digital_banking_app/Components/subheader_text.dart';
import 'package:digital_banking_app/Routes/routers.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class VerifyYourIdentity extends StatefulWidget {
  const VerifyYourIdentity({super.key});

  @override
  State<VerifyYourIdentity> createState() => _VerifyYourIdentityState();
}

class _VerifyYourIdentityState extends State<VerifyYourIdentity> {
  String? _selectedVerificationMethod;
  File? _capturedImage;

  final List<String> verificationMethods = [
    'BVN',
    'Driver\'s License',
    'National ID Card',
    'Voter\'s Card'
  ];

  // Function to pick an image using the camera
  Future<void> _captureImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? photo = await picker.pickImage(source: ImageSource.camera);

    if (photo != null) {
      setState(() {
        _capturedImage = File(photo.path);
      });

      // Simulate an upload (replace with actual API call)
      await _uploadImageToDatabase(_capturedImage!);

      // Navigate to the next screen
      Navigator.pushNamed(context, AppRoutes.addressdetails);
    }
  }

  // Placeholder function for uploading an image
  Future<void> _uploadImageToDatabase(File image) async {
    // Implement actual API call for image upload
    await Future.delayed(const Duration(seconds: 2));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 70, 0, 0),
              child: StepProgressIndicator(
                totalSteps: 5,
                currentStep: 1,
              ),
            ),
            const SizedBox(height: 20),
            const HeaderOne(
              header: 'Verify Your Identity',
              textcolor: Color(0xFF979797),
            ),
            const SubheaderText(
              text:
                  'We need a government-issued ID to ensure your account\'s security and comply with regulations.',
              textcolor: Color(0xFF212121),
            ),
            const SizedBox(height: 20),

            // Use InputfieldRadio to select only one option
            Column(
              children: verificationMethods.map((method) {
                return InputfieldRadio(
                  label: method,
                  value: method,
                  groupValue: _selectedVerificationMethod ?? '',
                  onChanged: (String? value) {
                    setState(() {
                      _selectedVerificationMethod = value;
                    });
                  },
                );
              }).toList(),
            ),

            const SizedBox(height: 40),

            // Privacy Policy
            GestureDetector(
              onTap: () async {
                await Navigator.pushNamed(context, AppRoutes.termsofservice);
              },
              child: const Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 150, 0),
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
            ),

            const SizedBox(height: 40),

            // Proceed Button
            GestureDetector(
              onTap: () async {
                if (_selectedVerificationMethod != null) {
                  await _captureImage();
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                        content: Text("Please select a verification method.")),
                  );
                }
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
      ),
    );
  }
}
