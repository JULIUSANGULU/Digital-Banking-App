import 'package:digital_banking_app/Components/footer.dart';
import 'package:digital_banking_app/Components/header_one.dart';
import 'package:flutter/material.dart';

class LoginWithFingerpint extends StatefulWidget {
  const LoginWithFingerpint({super.key});

  @override
  State<LoginWithFingerpint> createState() => _LoginWithFingerpintState();
}

class _LoginWithFingerpintState extends State<LoginWithFingerpint> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 100, 120, 0),
            child: HeaderOne(
              header: 'Welcome back, Adeiza',
              textcolor: Color(0xFF979797),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Center(
            child: Image.asset(
              'lib/assets/images/image.png',
            ),
          ),
          const SizedBox(
            height: 64,
          ),
          Center(
            child: Column(
              children: [
                const Text(
                  'Tap here to scan fingerprint',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w400,
                    height: 1.33,
                  ),
                ),
                const SizedBox(
                  height: 33,
                ),
                Image.asset(
                  'lib/assets/images/fingerprintscan.png',
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 300,
          ),
          const Center(child: Footer()),
        ],
      ),
    );
  }
}
