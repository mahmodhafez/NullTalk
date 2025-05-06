import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.title, required this.icon, required this.onChange});

  final String title;
  final Icon icon;
  final Function(String) onChange;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if(value!.isEmpty == true){
          return 'Value is Wrong';
        }
      },
      onChanged: onChange,
      decoration: InputDecoration(
        prefixIcon: icon,
        label: Text(title),
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
      ),
    );
  }
}
