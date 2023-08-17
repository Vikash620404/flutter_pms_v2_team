import 'package:flutter/material.dart';
import 'package:flutter_pms_v2_team/views/screen/auth/password_recover_screen.dart';

import '../../widgets/toggle_checked_box.dart';
import 'auth_widget/banner_widget.dart';
import 'auth_widget/elevation_button_widget.dart';
import 'auth_widget/text_field_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

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
                    "Login into your aimerse account.",
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
                padding: const EdgeInsets.only(left: 25.0, right: 25),
                child: SingleTextField(
                  controller: emailController, // Add controller for email field
                  labelText: 'Enter your work email',
                  hintText: 'Enter your email',
                ),
              ),
              SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.only(left: 25.0, right: 25),
                child: SingleTextField(
                  controller: passwordController, // Add controller for password field
                  labelText: 'Enter Password',
                  hintText: 'Password',
                  obscureText: true,
                ),
              ),
              SizedBox(height: 25,),
              Padding(
                padding: const EdgeInsets.only(left: 28.0),
                child: Row(
                  children: [
                    SizedBox(
                      height: 18,
                      width: 18,
                      child: ToggleableCheckBox(borderColor: Colors.grey),
                    ),
                    SizedBox(width: 10,),
                    Text('Remember me',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                  ],
                ),
              ),
              SizedBox(height: 85),
              ElevationButton(
                text: 'Continue with email',
                onPressed: () {
                  String enteredEmail = emailController.text.trim();
                  String enteredPassword = passwordController.text;

                  if (enteredEmail.isEmpty) {
                    // Show snackbar if email is empty
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Please enter your email.'),
                      ),
                    );
                  } else if (enteredPassword.isEmpty) {
                    // Show snackbar if password is empty
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Please enter your password.'),
                      ),
                    );
                  } else {
                    // Add your button click logic here
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PasswordRecoverScreen()),
                    );
                  }
                },
                borderRadius: BorderRadius.circular(15.0),
              ),

              SizedBox(height: 30,),
              Align(
                  alignment: Alignment.centerRight,
                  child:
                  Padding(
                    padding: const EdgeInsets.only(right: 25.0),
                    child: Text('Forgot Password?',style: TextStyle(fontWeight: FontWeight.w800,fontSize: 15),),
                  ))
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
