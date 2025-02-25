import 'package:flutter/material.dart';

class ButtonLg extends StatefulWidget {
  final String name;

  final Color color;
  final Color textColor;
  const ButtonLg(
      {super.key,
      required this.name,
      required this.color,
      required this.textColor});

  @override
  State<ButtonLg> createState() => _ButtonLgState();
}

class _ButtonLgState extends State<ButtonLg> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 345,
      height: 56,
      padding: const EdgeInsets.all(16),
      decoration: ShapeDecoration(
        color: const Color(0xFF1976D2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            widget.name,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: widget.textColor,
              fontSize: 20,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w400,
              height: 1.20,
            ),
          ),
        ],
      ),
    );
  }
}
