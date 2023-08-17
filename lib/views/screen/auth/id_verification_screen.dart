import 'package:flutter/material.dart';
import 'package:flutter_pms_v2_team/views/screen/auth/widget/elevation_button_widget.dart';
import 'package:flutter_pms_v2_team/views/screen/auth/login_screen.dart';
import 'package:flutter_pms_v2_team/views/widgets/const_color.dart';
import 'widget/banner_widget.dart';
import 'widget/text_field_widget.dart';

class IdVerificationScreen extends StatefulWidget {
  const IdVerificationScreen({super.key});

  @override
  State<IdVerificationScreen> createState() => _IdVerificationScreenState();
}

class _IdVerificationScreenState extends State<IdVerificationScreen> {
  final TextEditingController companyIDController = TextEditingController(); // Create the controller

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
                  controller: companyIDController, // Pass the controller
                  labelText: 'Company ID',
                  hintText: 'Enter company ID',
                ),
              ),
              const SizedBox(height: 50),
              ElevationButton(
                text: 'Verify ID',
                onPressed: () {
                  String companyID = companyIDController.text.trim();

                  if (companyID.isEmpty) {
                    // Show snackbar if company ID is empty
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Please enter your company ID.'),
                      ),
                    );
                  } else {
                    // Add your button click logic here
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const LoginScreen()),
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
