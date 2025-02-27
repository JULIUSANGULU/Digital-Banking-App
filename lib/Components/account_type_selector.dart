import 'package:flutter/material.dart';

class AccountTypeSelector extends StatefulWidget {
  final String label;
  final String imagePath;
  const AccountTypeSelector(
      {super.key, required this.label, required this.imagePath});

  @override
  State<AccountTypeSelector> createState() => _AccountTypeSelectorState();
}

class _AccountTypeSelectorState extends State<AccountTypeSelector> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 159,
      height: 173,
      child: Flexible(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 159,
              height: 141,
              child: Stack(
                children: [
                  Container(
                    width: 159,
                    height: 141,
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFF5F5F5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  Center(
                    child: SizedBox(
                      width: 100,
                      height: 100,
                      child: Image.asset(
                        widget.imagePath, // Dynamically use the provided image
                        width: 100,
                        height: 100,
                        fit: BoxFit.contain,
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 135,
              child: SizedBox(
                width: 135,
                child: Text(
                  widget.label,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w600,
                    height: 1.50,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
