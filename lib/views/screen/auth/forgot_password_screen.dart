import 'package:flutter/material.dart';
import 'package:flutter_pms_v2_team/views/screen/auth/widget/elevation_button_widget.dart';
import 'package:flutter_pms_v2_team/views/screen/auth/forgot_password0.2.dart';
import 'package:flutter_pms_v2_team/views/screen/auth/reset_password_screen.dart';
import '../../widgets/const_color.dart';
import 'widget/banner_widget.dart';
import 'widget/text_field_widget.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final TextEditingController emailController = TextEditingController(); // Create the controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whitecolor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const BannerWidget(),
              const SizedBox(height: 35,),
              const Center(
                child: Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text(
                    "Enter company email to recover password.",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: AppColors.greycolor,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 80,),
              Padding(
                padding: const EdgeInsets.only(left: 22.0, right: 22),
                child: SingleTextField(
                  controller: emailController, // Add controller for email field
                  labelText: 'Enter your work email',
                  hintText: 'Enter your email',
                ),
              ),
              const SizedBox(height: 85),
              ElevationButton(
                text: 'Continue',
                onPressed: () {
                  String enteredEmail = emailController.text.trim();

                  if (enteredEmail.isEmpty) {

                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Please enter your email.'),
                      ),
                    );
                  } else {
                    // Add your button click logic here
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ForgotPassword2()),
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
