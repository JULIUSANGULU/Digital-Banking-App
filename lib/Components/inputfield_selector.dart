import 'package:flutter/material.dart';

class InputfieldSelector extends StatefulWidget {
  final String label;
  final bool isSelected;
  final VoidCallback? onSelected;

  const InputfieldSelector({
    super.key,
    required this.label,
    this.isSelected = false,
    this.onSelected,
  });

  @override
  State<InputfieldSelector> createState() => _InputfieldSelectorState();
}

class _InputfieldSelectorState extends State<InputfieldSelector> {
  bool _isSelected = false;

  @override
  void initState() {
    super.initState();
    _isSelected = widget.isSelected;
  }

  void _toggleSelection() {
    setState(() {
      _isSelected = !_isSelected;
    });

    if (widget.onSelected != null) {
      widget.onSelected!();
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggleSelection,
      child: Container(
        width: 397,
        height: 64,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        decoration: BoxDecoration(
          color: _isSelected
              ? Colors.blue.withOpacity(0.2)
              : const Color(0xFFF5F5F5), // Change background on selsect
          borderRadius: BorderRadius.circular(6),
          border: Border.all(
            color: _isSelected
                ? Theme.of(context).primaryColor
                : Colors.transparent, // Change border color
            width: 2,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 15,
              height: 15,
              decoration: BoxDecoration(
                color: _isSelected
                    ? Theme.of(context).primaryColor
                    : const Color(0xFFDDDDDD),
                shape: BoxShape.circle,
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
      ),
    );
  }
}
