import 'package:digital_banking_app/Components/button_sm.dart';
import 'package:digital_banking_app/Components/header_one.dart';
import 'package:digital_banking_app/Components/header_two.dart';
import 'package:digital_banking_app/Routes/routers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OnboardingscreenOne extends StatefulWidget {
  const OnboardingscreenOne({super.key});

  @override
  State<OnboardingscreenOne> createState() => _OnboardingscreenOneState();
}

class _OnboardingscreenOneState extends State<OnboardingscreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 120,
                  width: 244,
                  child: SizedBox(
                    child: HeaderOne(
                        header: "Hey there Soros",
                        textcolor: Color(0xFF979797)),
                  ),
                ),
                SizedBox(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        child: Image.asset(
                          'lib/assets/images/image1.png',
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              width: double.infinity,
                              child: SizedBox(
                                width: double.infinity,
                                child: HeaderTwo(
                                    header: "Bank Smarter, Faster and Safer."),
                              ),
                            ),
                            const SizedBox(height: 6),
                            const Text(
                              'Join us in seconds or log in to take control of your finances—anytime, anywhere.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontFamily: 'Open Sans',
                                fontWeight: FontWeight.w400,
                                height: 1.50,
                              ),
                            ),
                            const SizedBox(
                              height: 180,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: () async {
                                    await Navigator.pushNamed(
                                        context, AppRoutes.login);
                                  },
                                  child: const ButtonSm(
                                    name: "Login",
                                    color: Color(0xFFDDDDDD),
                                    textColor: Colors.black,
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                GestureDetector(
                                  onTap: () async {
                                    await Navigator.pushNamed(
                                        context, AppRoutes.login);
                                  },
                                  child: const ButtonSm(
                                    name: "Sign Up",
                                    color: Color(0xFF1976D2),
                                    textColor: Color(0xFFF5F5F5),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
