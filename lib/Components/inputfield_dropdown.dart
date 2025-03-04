import 'package:flutter/material.dart';

class InputfieldDropdown extends StatefulWidget {
  final String label;
  final List<String> options;
  final String placeholder;
  final String? initialValue;
  final Function(String?)? onChanged;

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
  String? _selectedValue;
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
                  width: 2, // Stroke width
                ),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: _selectedValue,
                  isExpanded: true,
                  hint: Text(
                    widget.placeholder,
                    style: const TextStyle(
                      color: Color(0xFF979797),
                      fontSize: 16,
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  icon: const Icon(Icons.arrow_drop_down, color: Colors.black),
                  onChanged: (String? newValue) {
                    setState(() {
                      _selectedValue = newValue;
                      _isFocused = false; // Reset focus after selection
                    });
                    if (widget.onChanged != null) {
                      widget.onChanged!(newValue);
                    }
                  },
                  items: widget.options
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Open Sans',
                          fontWeight: FontWeight.w400,
                        ),
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
