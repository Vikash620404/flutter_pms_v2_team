import 'package:flutter/material.dart';
import 'package:flutter_pms_v2_team/views/widgets/const_color.dart';

import '../../widgets/toggle_checked_box.dart';
import 'login_screen.dart';
import 'widget/banner_widget.dart';
import 'widget/elevation_button_widget.dart';
import 'widget/text_field_widget.dart';

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
                    "Reset password.",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color:AppColors.greycolor,
                      fontSize: 17,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 80,),
              Padding(
                padding: const EdgeInsets.only(left: 25.0, right: 25),
                child: SingleTextField(
                  labelText: 'Password',
                  hintText: 'Enter Password',
                  obscureText: true,
                  controller: passwordController,
                ),
              ),
              const SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(left: 25.0, right: 25),
                child: SingleTextField(
                  labelText: 'Confirm Password',
                  hintText: 'Enter confirm password',
                  obscureText: true,
                  controller: confirmPasswordController,
                ),
              ),
              const SizedBox(height: 85),
              ElevationButton(
                text: 'Submit',
                onPressed: () {
                  String password = passwordController.text;
                  String confirmPassword = confirmPasswordController.text;

                  if (password.isEmpty || confirmPassword.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Please enter both Password and Confirm Password.'),
                      ),
                    );
                  } else if (password != confirmPassword) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Passwords do not match.'),
                      ),
                    );
                  } else {
                    // Navigate to LoginScreen
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
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
