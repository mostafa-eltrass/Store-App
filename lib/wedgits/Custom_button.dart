import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  CustomButtom({required this.ontap, required this.text});
  String text;
  VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: ontap,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.blue,
          ),
          child: Center(child: Text('$text', style: TextStyle(
              color: Colors.white,
          ),)),
          width: double.infinity,
          height: 50,
        ),
      ),
    );
  }
}