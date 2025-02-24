import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Footer extends StatefulWidget {
  final VoidCallback onTap;
  const Footer({super.key, required this.onTap});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 292,
      height: 24,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: widget.onTap,
            child: const Text(
              'Switch account',
              style: TextStyle(
                color: Color(0xFF7B1FA2),
                fontSize: 14,
                fontFamily: 'Open Sans',
                fontWeight: FontWeight.w400,
                height: 1.29,
              ),
            ),
          ),
          const SizedBox(width: 60),
          GestureDetector(
            onTap: widget.onTap,
            child: const Text(
              'Login with password',
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
