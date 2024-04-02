import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) {},
      decoration: InputDecoration(
        border: border(),
        focusedBorder: border(),
        enabledBorder: border(),
        hintText: 'Search',
      ),
    );
  }

  OutlineInputBorder border() {
    return const OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(18),
        ),
        borderSide: BorderSide(color: Colors.white54));
  }
}
