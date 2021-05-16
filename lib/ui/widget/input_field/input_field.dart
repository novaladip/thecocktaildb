import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  const InputField({
    Key? key,
    required this.labelText,
    this.controller,
    this.focusNode,
    this.obscureText = false,
    this.autoCorrect = false,
    this.keyboardType = TextInputType.text,
    this.textInputAction = TextInputAction.newline,
    this.validator,
    this.onEditingComplete,
    this.onFieldSubmitted,
    this.margin = const EdgeInsets.symmetric(vertical: 10),
  }) : super(key: key);

  final String labelText;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final bool obscureText;
  final bool autoCorrect;
  final TextInputAction textInputAction;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  final void Function()? onEditingComplete;
  final void Function(String)? onFieldSubmitted;
  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        focusNode: focusNode,
        obscureText: obscureText,
        textInputAction: textInputAction,
        autocorrect: autoCorrect,
        validator: validator,
        onEditingComplete: onEditingComplete,
        onFieldSubmitted: onFieldSubmitted,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
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
        ),
      ),
    );
  }
}
