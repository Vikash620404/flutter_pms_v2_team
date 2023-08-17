import 'package:flutter/material.dart';

import '../../widgets/toggle_checked_box.dart';
import 'auth_widget/banner_widget.dart';
import 'auth_widget/elevation_button_widget.dart';
import 'auth_widget/text_field_widget.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              BannerWidget(),
              SizedBox(height: 20,),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    "Reset password.",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFB7B7B7),
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 80,),
              Padding(
                padding: const EdgeInsets.only(left: 25.0, right: 25),
                child: SingleTextField(
                  labelText: 'Password',
                  hintText: 'Enter Password',
                  obscureText: true,
                  controller: passwordController,
                ),
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(left: 25.0, right: 25),
                child: SingleTextField(
                  labelText: 'Confirm Password',
                  hintText: 'Enter confirm password',
                  obscureText: true,
                  controller: confirmPasswordController,
                ),
              ),
              SizedBox(height: 85),
              ElevationButton(
                text: 'Submit',
                onPressed: () {
                  String password = passwordController.text;
                  String confirmPassword = confirmPasswordController.text;

                  if (password.isEmpty || confirmPassword.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Please enter both Password and Confirm Password.'),
                      ),
                    );
                  } else if (password != confirmPassword) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Passwords do not match.'),
                      ),
                    );
                  } else {
                    // Add your submit logic here
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Password reset successfully.'),
                      ),
                    );
                  }
                },
                borderRadius: BorderRadius.circular(15.0),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }
}
