import 'package:flutter/material.dart';
import 'package:flutter_pms_v2_team/views/screen/auth/reset_password_screen.dart';
import 'package:flutter_pms_v2_team/views/widgets/const_color.dart';

import 'widget/banner_widget.dart';
import 'widget/code_verification_widget.dart';
import 'widget/elevation_button_widget.dart';

class ForgotPassword2 extends StatefulWidget {
  const ForgotPassword2({super.key});

  @override
  State<ForgotPassword2> createState() => _ForgotPassword2State();
}

class _ForgotPassword2State extends State<ForgotPassword2> {
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
                    "Please enter 4 digit verification code sent to",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: AppColors.greycolor,
                      fontSize: 17,
                    ),
                  ),
                ),
              ),
              const Center(
                child: Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text(
                    "ledogo@aimerse.com",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: AppColors.lightgreycolor,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 80,),
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
                    const SizedBox(width: 35,),
                    VerificationBox(
                      focusNode: secondFocusNode,
                      controller: secondController,
                      previousFocusNode: firstFocusNode,
                      nextFocusNode: thirdFocusNode,
                    ),
                    const SizedBox(width: 35,),
                    VerificationBox(
                      focusNode: thirdFocusNode,
                      controller: thirdController,
                      previousFocusNode: secondFocusNode,
                      nextFocusNode: fourthFocusNode,
                    ),
                    const SizedBox(width: 35,),
                    VerificationBox(
                      focusNode: fourthFocusNode,
                      controller: fourthController,
                      previousFocusNode: thirdFocusNode,
                      nextFocusNode: firstFocusNode,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 80),
              const Center(
                child: Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text(
                    "Don't receive code? Resend",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: AppColors.greycolor,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
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
                      MaterialPageRoute(builder: (context) => const ResetPasswordScreen()),
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
