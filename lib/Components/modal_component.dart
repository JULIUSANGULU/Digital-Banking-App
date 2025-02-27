import 'package:flutter/material.dart';

class ModalComponent extends StatefulWidget {
  final String text;
  const ModalComponent({super.key, required this.text});

  @override
  State<ModalComponent> createState() => _ModalComponentState();
}

class _ModalComponentState extends State<ModalComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 353,
      height: 68,
      padding: const EdgeInsets.all(10),
      decoration: ShapeDecoration(
        color: const Color(0xFFF5F5F5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 333,
            child: SizedBox(
              width: 333,
              child: Text(
                widget.text,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Open Sans',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
