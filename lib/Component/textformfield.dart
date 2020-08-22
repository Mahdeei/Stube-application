import 'package:flutter/material.dart';

class InputTextForm extends StatelessWidget {
  final String lable;
  // final IconData iconData;
  var validate;
  final obscure;
  final controller;
  final Color color;
  final Color textColor;
  final lableColor;
  final onSaved;
  // final String hint;
  InputTextForm({
    this.lable,
    // this.iconData,
    this.validate,
    this.obscure,
    this.controller,
    this.color,
    this.textColor,
    this.lableColor,
    this.onSaved,
    // this.hint
  });
  @override
  Widget build(BuildContext context) {
    return new TextFormField(
      controller: controller,
      validator: validate,
      onSaved: onSaved,
      obscureText: obscure,
      cursorColor: color,
      style: TextStyle(color: color),
      decoration: InputDecoration(
          // hintText: hint,
          // // prefixIcon: Icon(
          //   iconData,
          //   color: Colors.white,
          // ),
          labelText: lable,
          labelStyle: TextStyle(color: lableColor),
          border:
              UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          fillColor: color,
          focusColor: color,
          hoverColor: color,
          enabledBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: color))),
    );
  }
}
