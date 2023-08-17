import 'package:flutter/material.dart';
import 'package:flutter_pms_v2_team/views/widgets/const_color.dart';

class SingleTextFieldProfile extends StatelessWidget {
  final String labelText;
  final String hintText;
  final FormFieldValidator<String>? validator;
  final bool obscureText;
  final TextEditingController? controller; // Added controller

  const SingleTextFieldProfile({
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
        Text(
          labelText,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 15,
          ),
        ),
        SizedBox(height: 8),
        TextFormField(
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
            hintStyle: TextStyle(color: AppColors.deepgreycolor, fontSize: 16,fontWeight: FontWeight.w500),
          ),
          obscureText: obscureText,
        ),
      ],
    );
  }
}
