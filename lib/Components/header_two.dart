import 'package:flutter/material.dart';

class HeaderTwo extends StatefulWidget {
  final String header;
  const HeaderTwo({super.key, required this.header});

  @override
  State<HeaderTwo> createState() => _HeaderTwoState();
}

class _HeaderTwoState extends State<HeaderTwo> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.header,
      textAlign: TextAlign.center,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontFamily: 'Open Sans',
        fontWeight: FontWeight.w700,
        height: 1.33,
      ),
    );
  }
}
