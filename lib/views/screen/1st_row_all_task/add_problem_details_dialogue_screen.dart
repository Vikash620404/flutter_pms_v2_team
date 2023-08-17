import 'package:flutter/material.dart';
import 'package:flutter_pms_v2_team/views/screen/project_screen/project_screen.dart';
import '../../widgets/const_color.dart';
import '../../widgets/text_field_widget.dart';
import '../auth/widget/elevation_button_widget.dart';
import '../auth/widget/text_field_widget.dart';

class ProblemDetailScreen extends StatefulWidget {
  const ProblemDetailScreen({super.key});

  @override
  State<ProblemDetailScreen> createState() => _ProblemDetailScreenState();
}

class _ProblemDetailScreenState extends State<ProblemDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Problem Details',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 19,
                        color:AppColors.deepgreycolor,
                      ),
                    ),
                    Image.asset('assets/images/circle.png'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 400,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.greycolor),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.all(10),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Add Problem Details',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: AppColors.greycolor,
                        ),
                      ),
                      SizedBox(height: 10),
                      // Replace the Container with a TextField for the text area
                      TextField(
                        maxLines: null, // Allows the text area to expand as needed
                        decoration: InputDecoration(
                          hintText: '',
                          border: InputBorder.none, // Remove the border around the TextField
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              ElevationButton(
                text: 'Add Details',
                onPressed: () {

                  // if (enteredEmail.isEmpty) {
                  //   // Show snackbar if email is empty
                  //   ScaffoldMessenger.of(context).showSnackBar(
                  //     SnackBar(
                  //       content: Text('Please enter your email.'),
                  //     ),
                  //   );
                  // } else {
                  //   // Add your button click logic here
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ProjectScreen()),
                    );
                  //}
                },
                borderRadius: BorderRadius.circular(15.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
