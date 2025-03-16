import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InputfieldDropdown extends StatefulWidget {
  final String label;
  final String placeholder;
  final List<DropdownItem> options;
  final DropdownItem? initialValue;
  final Function(DropdownItem?)? onChanged;

  const InputfieldDropdown({
    super.key,
    required this.label,
    required this.placeholder,
    required this.options,
    this.initialValue,
    this.onChanged,
  });

  @override
  State<InputfieldDropdown> createState() => _InputfieldDropdownState();
}

class _InputfieldDropdownState extends State<InputfieldDropdown> {
  DropdownItem? _selectedValue;
  bool _isFocused = false;

  @override
  void initState() {
    super.initState();
    _selectedValue = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 800,
      height: 80,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.label,
            style: const TextStyle(
              color: Color(0xFF393939),
              fontSize: 18,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w400,
              height: 1,
            ),
          ),
          const SizedBox(height: 6),
          GestureDetector(
            onTap: () {
              setState(() {
                _isFocused = true;
              });
            },
            child: Container(
              height: 56,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: _isFocused ? Colors.white : const Color(0xFFF5F5F5),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: _isFocused
                      ? Theme.of(context).primaryColor
                      : Colors.transparent,
                  width: 2,
                ),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<DropdownItem>(
                  value: _selectedValue,
                  isExpanded: true,
                  hint: Row(
                    children: [
                      const SizedBox(width: 8),
                      Text(
                        widget.placeholder,
                        style: const TextStyle(
                          color: Color(0xFF979797),
                          fontSize: 16,
                          fontFamily: 'Open Sans',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  icon: const Icon(Icons.arrow_drop_down, color: Colors.black),
                  onChanged: (DropdownItem? newValue) {
                    setState(() {
                      _selectedValue = newValue;
                      _isFocused = false; // Reset focus after selection
                    });
                    if (widget.onChanged != null) {
                      widget.onChanged!(newValue);
                    }
                  },
                  items: widget.options
                      .map<DropdownMenuItem<DropdownItem>>((DropdownItem item) {
                    return DropdownMenuItem<DropdownItem>(
                      value: item,
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            item.svgPath, // Use SVG instead of Icon
                            width: 24,
                            height: 24,
                          ),
                          const SizedBox(width: 8),
                          Text(item.text),
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Model for dropdown items with SVG images
class DropdownItem {
  final String svgPath; // Path to SVG asset
  final String text;

  DropdownItem({required this.svgPath, required this.text});
}
