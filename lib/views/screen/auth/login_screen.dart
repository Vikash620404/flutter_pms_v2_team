import 'package:flutter/material.dart';
import 'package:flutter_pms_v2_team/views/screen/auth/forgot_password_screen.dart';
import 'package:flutter_pms_v2_team/views/screen/auth/reset_password_screen.dart';

import '../../widgets/const_color.dart';
import '../../widgets/toggle_checked_box.dart';
import 'widget/banner_widget.dart';
import 'widget/elevation_button_widget.dart';
import 'widget/text_field_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

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
                    "Login into your aimerse account.",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color:AppColors.greycolor,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 80,),
              Padding(
                padding: const EdgeInsets.only(left: 25.0, right: 25),
                child: SingleTextField(
                  controller: emailController, // Add controller for email field
                  labelText: 'Enter your work email',
                  hintText: 'Enter your email',
                ),
              ),
              const SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.only(left: 25.0, right: 25),
                child: SingleTextField(
                  controller: passwordController, // Add controller for password field
                  labelText: 'Enter Password',
                  hintText: 'Password',
                  obscureText: true,
                ),
              ),
              const SizedBox(height: 25,),
              Padding(
                padding: const EdgeInsets.only(left: 28.0),
                child: Row(
                  children: [
                    SizedBox(
                      height: 18,
                      width: 18,
                      child: ToggleableCheckBox(borderColor: AppColors.greycolor),
                    ),
                    const SizedBox(width: 10,),
                    const Text('Remember me',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              ElevationButton(
                text: 'Continue with email',
                onPressed: () {
                  String enteredEmail = emailController.text.trim();
                  String enteredPassword = passwordController.text;

                  if (enteredEmail.isEmpty) {
                    // Show snackbar if email is empty
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Please enter your email.'),
                      ),
                    );
                  } else if (enteredPassword.isEmpty) {
                    // Show snackbar if password is empty
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Please enter your password.'),
                      ),
                    );
                  } else {
                    // Add your button click logic here
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ForgotPasswordScreen()),
                    );
                  }
                },
                borderRadius: BorderRadius.circular(15.0),
              ),

              const SizedBox(height: 30,),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 25.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const ResetPasswordScreen()),
                      );
                    },
                    child: const Text(
                      'Forgot Password?',
                      style: TextStyle(fontWeight: FontWeight.w800, fontSize: 15),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 50,),
              const Center(
                child: Text(
                  'Change Company ID',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.deepgreycolor,
                  ),
                  overflow: TextOverflow.ellipsis, // Add this line for ellipsis
                ),
              )

            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
