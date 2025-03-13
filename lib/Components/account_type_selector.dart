import 'package:flutter/material.dart';

class AccountTypeSelector extends StatefulWidget {
  final String label;
  final String imagePath;
  final bool isSelected;
  final VoidCallback onTap; // Function to handle selection

  const AccountTypeSelector({
    super.key,
    required this.label,
    required this.imagePath,
    required this.isSelected,
    required this.onTap,
  });

  @override
  State<AccountTypeSelector> createState() => _AccountTypeSelectorState();
}

class _AccountTypeSelectorState extends State<AccountTypeSelector> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap, // Call function when tapped
      child: SizedBox(
        width: 159,
        height: 173,
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
                        side: BorderSide(
                          color: widget.isSelected
                              ? Colors.blue
                              : Colors
                                  .transparent, // Change border on selection
                          width: 2,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: SizedBox(
                      width: 100,
                      height: 100,
                      child: Image.asset(
                        widget.imagePath,
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
            const SizedBox(height: 8),
            SizedBox(
              width: 135,
              child: Text(
                widget.label,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 16,
                  fontFamily: 'Open Sans',
                  fontWeight: FontWeight.w600,
                  height: 1.50,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
