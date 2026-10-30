import 'package:flutter/material.dart';
class CustomAppField extends StatelessWidget {
  const CustomAppField({super.key, required this.hint, this.suffixIcon});

  final String hint;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText:hint,
        suffixIcon:suffixIcon ,
        filled: true,
        fillColor:Colors.white ,
        enabledBorder:OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color:Color(0xffE6E6E6) ),
        ) ,
        focusedBorder:OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color:Color(0xff3669C9) ),
        ),

      ),
    );
  }
}