import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextField(
      maxLines: null, // Allow the text field to expand vertically
      decoration: InputDecoration(

      ),
    );
  }
}
