import 'package:flutter/material.dart';

class ButtonSm extends StatefulWidget {
  final String name;
  final VoidCallback onTap;
  final Color color;
  final Color textColor;
  const ButtonSm(
      {super.key,
      required this.name,
      required this.onTap,
      required this.color,
      required this.textColor});

  @override
  State<ButtonSm> createState() => _ButtonSmState();
}

class _ButtonSmState extends State<ButtonSm> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        width: 182,
        height: 56,
        padding: const EdgeInsets.all(16),
        decoration: ShapeDecoration(
          color: widget.color, // Use the passed color
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
              widget.name, // Use the passed text
              textAlign: TextAlign.center,
              style: TextStyle(
                color: widget.textColor, // Use the passed text color
                fontSize: 20,
                fontFamily: 'Open Sans',
                fontWeight: FontWeight.w400,
                height: 1.20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
