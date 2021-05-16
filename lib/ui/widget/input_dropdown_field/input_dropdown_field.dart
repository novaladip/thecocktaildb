import 'package:flutter/material.dart';
import 'package:thecocktaildb/styles.dart';

class InputDropdownField<Option> extends StatelessWidget {
  final List<Option> options;
  final Option? currentValue;
  final String labelText;
  final String? errorText;
  final String? helperText;
  final bool enabled;
  final void Function(Option?) onChanged;
  final Widget Function(Option) renderItem;
  final EdgeInsets? margin;

  const InputDropdownField({
    Key? key,
    this.currentValue,
    required this.options,
    required this.labelText,
    required this.onChanged,
    required this.renderItem,
    this.errorText,
    this.helperText,
    this.enabled = true,
    this.margin = const EdgeInsets.symmetric(vertical: 10),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final inputDecoration = InputDecoration(
      labelText: labelText,
      labelStyle: TextStyle(color: Colors.white70),
      contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
      floatingLabelBehavior: FloatingLabelBehavior.never,
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white, width: 2.0),
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white, width: 1.0),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white, width: 1.0),
      ),
    );

    return Container(
      margin: margin,
      child: InputDecorator(
        decoration: inputDecoration,
        child: DropdownButtonHideUnderline(
          child: DropdownButton<Option>(
            style: TextStyle(color: Colors.white),
            dropdownColor: Styles.primaryColor,
            onChanged: onChanged,
            isDense: true,
            icon: Icon(Icons.arrow_drop_down_circle, color: Colors.white),
            value: currentValue,
            items: options
                .map(
                  (value) => DropdownMenuItem(
                    value: value,
                    child: renderItem(value),
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
