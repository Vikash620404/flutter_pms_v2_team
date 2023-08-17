import 'package:flutter/material.dart';

class SingleTextFieldWidget extends StatelessWidget {
  final String labelText;
  final String hintText;
  final FormFieldValidator<String>? validator;
  final bool obscureText;
  final TextEditingController? controller; // Added controller

  const SingleTextFieldWidget({
    Key? key,
    required this.labelText,
    required this.hintText,
    this.validator,
    this.obscureText = false,
    this.controller, // Added controller parameter
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0,right: 20),
          child: Text(
            labelText,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 15,
            ),
          ),
        ),
        SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.only(left: 20.0,right: 20,bottom: 15),
          child: TextFormField(
            controller: controller, // Set the controller
            validator: validator, // Set the validator
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFFB7B7B7)),
                borderRadius: BorderRadius.circular(10.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFFB7B7B7)),
                borderRadius: BorderRadius.circular(10.0),
              ),
              hintText: hintText,
              hintStyle: TextStyle(color: Color(0xFFB7B7B7), fontSize: 15),
            ),
            obscureText: obscureText,
          ),
        ),
      ],
    );
  }
}
