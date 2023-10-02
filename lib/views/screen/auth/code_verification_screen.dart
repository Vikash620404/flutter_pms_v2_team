import 'package:flutter/material.dart';
import 'package:flutter_pms_v2_team/views/screen/auth/reset_password_screen.dart';

import 'auth_widget/banner_widget.dart';
import 'auth_widget/code_verification_widget.dart';
import 'auth_widget/elevation_button_widget.dart';

class CodeVerificationScreen extends StatefulWidget {
  const CodeVerificationScreen({super.key});

  @override
  State<CodeVerificationScreen> createState() => _CodeVerificationScreenState();
}

class _CodeVerificationScreenState extends State<CodeVerificationScreen> {
  late FocusNode firstFocusNode;
  late FocusNode secondFocusNode;
  late FocusNode thirdFocusNode;
  late FocusNode fourthFocusNode;

  final TextEditingController firstController = TextEditingController();
  final TextEditingController secondController = TextEditingController();
  final TextEditingController thirdController = TextEditingController();
  final TextEditingController fourthController = TextEditingController();

  @override
  void initState() {
    super.initState();
    firstFocusNode = FocusNode();
    secondFocusNode = FocusNode();
    thirdFocusNode = FocusNode();
    fourthFocusNode = FocusNode();
  }

  @override
  void dispose() {
    firstFocusNode.dispose();
    secondFocusNode.dispose();
    thirdFocusNode.dispose();
    fourthFocusNode.dispose();
    firstController.dispose();
    secondController.dispose();
    thirdController.dispose();
    fourthController.dispose();
    super.dispose();
  }

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
                    "Please enter 4 digit verification code sent to",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFB7B7B7),
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    "ledogo@aimerse.com",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Color(0xFFB7B7B7),
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 80,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    VerificationBox(
                      focusNode: firstFocusNode,
                      controller: firstController,
                      previousFocusNode: fourthFocusNode,
                      nextFocusNode: secondFocusNode,
                    ),
                    SizedBox(width: 35,),
                    VerificationBox(
                      focusNode: secondFocusNode,
                      controller: secondController,
                      previousFocusNode: firstFocusNode,
                      nextFocusNode: thirdFocusNode,
                    ),
                    SizedBox(width: 35,),
                    VerificationBox(
                      focusNode: thirdFocusNode,
                      controller: thirdController,
                      previousFocusNode: secondFocusNode,
                      nextFocusNode: fourthFocusNode,
                    ),
                    SizedBox(width: 35,),
                    VerificationBox(
                      focusNode: fourthFocusNode,
                      controller: fourthController,
                      previousFocusNode: thirdFocusNode,
                      nextFocusNode: firstFocusNode,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 80),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    "Don't receive code? Resend",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Color(0xFFB7B7B7),
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40),
              ElevationButton(
                text: 'Continue',
                onPressed: () {
                  String code = firstController.text + secondController.text +
                      thirdController.text + fourthController.text;

                  // if (code.length < 4) { // Corrected condition
                  //   ScaffoldMessenger.of(context).showSnackBar(
                  //     SnackBar(
                  //       content: Text('Please enter the complete four-digit code.'),
                  //     ),
                  //   );
                  // } else {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ResetPasswordScreen()),
                    );
                  },
               // },
                borderRadius: BorderRadius.circular(15.0),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
