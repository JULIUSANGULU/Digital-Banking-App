import 'package:flutter/material.dart';

class SubheaderText extends StatefulWidget {
  final String text;
  final Color textcolor;
  const SubheaderText({super.key, required this.text, required this.textcolor});

  @override
  State<SubheaderText> createState() => _SubheaderTextState();
}

class _SubheaderTextState extends State<SubheaderText> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 397,
      child: SizedBox(
        width: 397,
        child: Text(
          widget.text,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Color(0xFF212121),
            fontSize: 14,
            fontFamily: 'Open Sans',
            fontWeight: FontWeight.w400,
            height: 1.50,
          ),
        ),
      ),
    );
  }
}
