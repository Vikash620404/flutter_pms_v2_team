import 'package:flutter/material.dart';
import 'package:flutter_pms_v2_team/views/screen/auth/auth_widget/elevation_button_widget.dart';
import 'package:flutter_pms_v2_team/views/screen/auth/code_verification_screen.dart';
import 'package:flutter_pms_v2_team/views/screen/auth/reset_password_screen.dart';
import 'auth_widget/banner_widget.dart';
import 'auth_widget/text_field_widget.dart';

class PasswordRecoverScreen extends StatefulWidget {
  const PasswordRecoverScreen({super.key});

  @override
  State<PasswordRecoverScreen> createState() => _PasswordRecoverScreenState();
}

class _PasswordRecoverScreenState extends State<PasswordRecoverScreen> {
  final TextEditingController emailController = TextEditingController(); // Create the controller

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
                    "Enter company email to recover password.",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Color(0xFFB7B7B7),
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 80,),
              Padding(
                padding: const EdgeInsets.only(left: 22.0, right: 22),
                child: SingleTextField(
                  controller: emailController, // Add controller for email field
                  labelText: 'Enter your work email',
                  hintText: 'Enter your email',
                ),
              ),
              SizedBox(height: 85),
              ElevationButton(
                text: 'Continue',
                onPressed: () {
                  String enteredEmail = emailController.text.trim();

                  if (enteredEmail.isEmpty) {
                    // Show snackbar if email is empty
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Please enter your email.'),
                      ),
                    );
                  } else {
                    // Add your button click logic here
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CodeVerificationScreen()),
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
    emailController.dispose();
    super.dispose();
  }
}
