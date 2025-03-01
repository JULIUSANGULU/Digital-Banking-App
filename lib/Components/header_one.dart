import 'package:flutter/material.dart';

class HeaderOne extends StatefulWidget {
  final String header;
  final Color textcolor;
  const HeaderOne({super.key, required this.header, required this.textcolor});

  @override
  State<HeaderOne> createState() => _HeaderOneState();
}

class _HeaderOneState extends State<HeaderOne> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      child: SizedBox(
        width: 244,
        child: Text(
          widget.header,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: widget.textcolor,
            fontSize: 24,
            fontFamily: 'Open Sans',
            fontWeight: FontWeight.w700,
            height: 1.50,
          ),
        ),
      ),
    );
  }
}
