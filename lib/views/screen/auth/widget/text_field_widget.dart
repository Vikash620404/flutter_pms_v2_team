import 'package:flutter/material.dart';
import 'package:flutter_pms_v2_team/views/widgets/const_color.dart';

class SingleTextField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final FormFieldValidator<String>? validator;
  final bool obscureText;
  final TextEditingController? controller; // Added controller

  const SingleTextField({
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
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 17,
          ),
        ),
        const SizedBox(height: 8),
        TextFormField(
          controller: controller, // Set the controller
          validator: validator, // Set the validator
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: AppColors.greycolor),
              borderRadius: BorderRadius.circular(15.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: AppColors.greycolor),
              borderRadius: BorderRadius.circular(15.0),
            ),
            hintText: hintText,
            hintStyle: const TextStyle(color: AppColors.greycolor, fontSize: 17),
          ),
          obscureText: obscureText,
        ),
      ],
    );
  }
}
