import 'package:digital_banking_app/Routes/routers.dart';
import 'package:flutter/material.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 392,
      height: 24,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Switch account',
            style: TextStyle(
              color: Color(0xFF7B1FA2),
              fontSize: 14,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w400,
              height: 1.29,
            ),
          ),
          const SizedBox(width: 30), // Space before the vertical line
          Container(
            width: 1, // Line width
            height: 16, // Line height
            color: const Color(0xFFAEAEAE), // Line color
          ),
          const SizedBox(width: 30), // Space after the vertical line
          GestureDetector(
            onTap: () async {
              await Navigator.pushNamed(
                  context, AppRoutes.loginwithfingerprint);
            },
            child: const Text(
              'Login with fingerprint',
              style: TextStyle(
                color: Color(0xFF7B1FA2),
                fontSize: 14,
                fontFamily: 'Open Sans',
                fontWeight: FontWeight.w400,
                height: 1.29,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
