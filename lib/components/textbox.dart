import 'package:flutter/material.dart';

class CustomTextBox extends StatefulWidget {
  final String hintText;
  final bool isPassword;

  CustomTextBox({Key? key, required this.hintText, this.isPassword = false})
      : super(key: key);

  @override
  _CustomTextBoxState createState() => _CustomTextBoxState();
}

class _CustomTextBoxState extends State<CustomTextBox> {
  late bool _obscureText;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.isPassword;
  }

  void _toggleVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
        obscureText: _obscureText,
        decoration: InputDecoration(
          hintText: widget.hintText,
          suffixIcon: widget.isPassword
              ? IconButton(
                  icon: Icon(
                    _obscureText ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: _toggleVisibility,
                )
              : null,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ));
  }
}
