import 'package:flutter/material.dart';
import 'package:flutter_pms_v2_team/views/screen/auth/auth_widget/elevation_button_widget.dart';
import 'package:flutter_pms_v2_team/views/screen/auth/login_screen.dart';
import 'auth_widget/banner_widget.dart';
import 'auth_widget/text_field_widget.dart';

class VerifyScreen extends StatefulWidget {
  const VerifyScreen({super.key});

  @override
  State<VerifyScreen> createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  final TextEditingController companyIDController = TextEditingController(); // Create the controller

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
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFB7B7B7),
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 80,),
              Padding(
                padding: const EdgeInsets.only(left: 22.0, right: 22),
                child: SingleTextField(
                  controller: companyIDController, // Pass the controller
                  labelText: 'Company ID',
                  hintText: 'Enter company ID',
                ),
              ),
              SizedBox(height: 85),
              ElevationButton(
                text: 'Verify ID',
                onPressed: () {
                  String companyID = companyIDController.text.trim();

                  if (companyID.isEmpty) {
                    // Show snackbar if company ID is empty
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Please enter your company ID.'),
                      ),
                    );
                  } else {
                    // Add your button click logic here
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
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
    companyIDController.dispose(); // Dispose the controller to avoid memory leaks
    super.dispose();
  }
}
