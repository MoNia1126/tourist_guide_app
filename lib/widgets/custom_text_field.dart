import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  String label;
  TextInputType keyboardType;
  TextEditingController? controller;
  bool obscureText;
  String? Function(String?)? validator;
  String? hintText;
  Icon? prefixIcon;
  int maxLines;
  Color? cursorColor;
  IconButton? suffixIcon;

  CustomTextFormField(
      {super.key,
      this.label = '',
      this.keyboardType = TextInputType.text,
      this.controller,
      this.obscureText = false,
      this.validator,
      this.prefixIcon,
      this.hintText,
      this.maxLines = 1,
      this.cursorColor,
      this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextFormField(
        style: TextStyle(color: Colors.white),
        enableInteractiveSelection: true,
        cursorColor: Theme.of(context).primaryColor,
        decoration: InputDecoration(
          hintStyle: const TextStyle(color: Colors.white),
          label: Text(
            label,
            style: TextStyle(color: Colors.white),
          ),
          hintText: hintText,
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(
                width: 3,
                color: Theme.of(context).primaryColor,
              )),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              width: 3,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
        keyboardType: keyboardType,
        controller: controller,
        obscureText: obscureText,
        validator: validator,
      ),
    );
  }
}
