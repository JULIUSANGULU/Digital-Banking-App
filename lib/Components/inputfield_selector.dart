import 'package:flutter/material.dart';

class InputfieldSelector extends StatefulWidget {
  final String label;

  const InputfieldSelector({
    super.key,
    required this.label,
  });

  @override
  State<InputfieldSelector> createState() => _InputfieldSelectorState();
}

class _InputfieldSelectorState extends State<InputfieldSelector> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 397,
      height: 64,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      decoration: ShapeDecoration(
        color: const Color(0xFFF5F5F5),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 15,
            height: 15,
            decoration: const ShapeDecoration(
              color: Color(0xFFDDDDDD),
              shape: OvalBorder(),
            ),
          ),
          const SizedBox(width: 10),
          Text(
            widget.label,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w400,
              height: 1.50,
            ),
          ),
        ],
      ),
    );
  }
}
