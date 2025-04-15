import 'package:flutter/material.dart';

class customTextfield extends StatelessWidget {
  customTextfield.customTextField({this.hintText, this.onChanged,this.inputType });
  String? hintText;
  Function(String)? onChanged;
  TextInputType? inputType;
  @override
  Widget build(BuildContext context) {
    return TextField(
         keyboardType: inputType,
        onChanged: onChanged,
        decoration: InputDecoration(
            hintText: hintText,

            border: OutlineInputBorder(

                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide()

                )));
  }
}