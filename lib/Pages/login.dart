import 'package:digital_banking_app/Components/button_lg.dart';
import 'package:digital_banking_app/Components/footer.dart';
import 'package:digital_banking_app/Components/inputfield.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
                  child: Center(
                    child: Image.asset(
                      'lib/assets/images/image.png',
                    ),
                  ),
                ),
                const Inputfield(
                    label: 'Username', placeholder: 'Enter your name'),
                const SizedBox(
                  height: 30,
                ),
                const Inputfield(
                    label: 'Passcode',
                    placeholder: 'Enter your 6 digit passcode'),
                const SizedBox(
                  height: 25,
                ),
                SizedBox(
                  width: 400,
                  height: 18,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 15,
                            height: 15,
                            clipBehavior: Clip.antiAlias,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                  width: 1,
                                  strokeAlign: BorderSide.strokeAlignOutside,
                                  color: Color(0xFFC6C6C6),
                                ),
                                borderRadius: BorderRadius.circular(2),
                              ),
                            ),
                          ),
                          const SizedBox(width: 4),
                          const Text(
                            'Remember me',
                            style: TextStyle(
                              color: Color(0xFF393939),
                              fontSize: 14,
                              fontFamily: 'Open Sans',
                              fontWeight: FontWeight.w400,
                              height: 1.29,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 110),
                      const Text(
                        'Forgot password?',
                        style: TextStyle(
                          color: Color(0xFF393939),
                          fontSize: 14,
                          fontFamily: 'Open Sans',
                          fontWeight: FontWeight.w400,
                          height: 1.29,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                const ButtonLg(
                  name: 'Login',
                  color: Color(0xFF1976D2),
                  textColor: Color(0xFFF5F5F5),
                ),
                const SizedBox(
                  height: 200,
                ),
                const Footer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
