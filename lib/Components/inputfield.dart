import 'package:flutter/material.dart';

class Inputfield extends StatefulWidget {
  final String label;
  final String placeholder;

  const Inputfield({super.key, required this.label, required this.placeholder});

  @override
  State<Inputfield> createState() => _InputfieldState();
}

class _InputfieldState extends State<Inputfield> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 800,
      height: 80,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
            child: SizedBox(
              width: double.infinity,
              child: Text(
                widget.label,
                style: const TextStyle(
                  color: Color(0xFF393939),
                  fontSize: 18,
                  fontFamily: 'Open Sans',
                  fontWeight: FontWeight.w400,
                  height: 1,
                ),
              ),
            ),
          ),
          const SizedBox(height: 6),
          Container(
            height: 56,
            padding: const EdgeInsets.only(
              top: 19,
              left: 10,
              right: 21,
              bottom: 19,
            ),
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              color: const Color(0xFFF5F5F5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Row(
              // mainAxisSize: MainAxisSize.min,
              // mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  widget.placeholder,
                  style: const TextStyle(
                    color: Color(0xFF979797),
                    fontSize: 16,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w400,
                    height: 1.12,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
