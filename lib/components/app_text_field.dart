import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final String hint;
  const AppTextField({super.key, required this.hint});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        labelText: hint,
        labelStyle: TextStyle(
          color: Colors.white,
        ),
        border: const UnderlineInputBorder(
        
          borderRadius: BorderRadius.all(Radius.circular(12)),     
        ),
        focusedBorder: const UnderlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)), 
          borderSide: const BorderSide(color: Colors.transparent,
          width: 1.5),
        ),
        filled: true,
        fillColor: Colors.white.withOpacity(0.5),
      ),);
  }
}
