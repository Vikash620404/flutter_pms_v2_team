import 'package:flutter/material.dart';
import 'package:flutter_pms_v2_team/views/screen/profile_screen/profile_screen1.dart';
import 'package:flutter_pms_v2_team/views/screen/profile_screen/team_role_page.dart';
import 'package:flutter_pms_v2_team/views/screen/profile_screen/widget/text_field_widget.dart';
import 'package:intl/intl.dart';

import '../../widgets/const_color.dart';
import '../../widgets/text_field_widget.dart';
import '../auth/widget/elevation_button_widget.dart';
import '../auth/widget/text_field_widget.dart';
import '../project_screen/widget/project_screen_banner_widget.dart';
class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  DateTime? selectedDate;
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ProfileScreen1()),
                    );
                  },
                  child: CustomRowWidget(labelText: 'Edit Profile',)),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(

                  children: [
                    Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                        color: AppColors.lightgreycolor,
                        borderRadius: BorderRadius.circular(45),
                      ),
                    ),

                    const Flexible(
                      child: Column(children: [
                        Padding(
                          padding: EdgeInsets.only(right: 75.0),
                          child:
                          Text(
                            'Upload image',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF002FD6),
                            ),
                          )

                        ),
                        SizedBox(height: 8,),
                        Padding(
                          padding: EdgeInsets.only(left: 15.0),
                          child: Expanded(
                              child: Text('Make sure the file is below 2mb',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 13,color: AppColors.greycolor),)),
                        ),
                      ],),
                    ),

                  ],
                ),
              ),
              const SingleTextFieldWidget(labelText: 'Full Name', hintText: 'Enter your name',),
              const SingleTextFieldWidget(labelText: 'Email ID', hintText: 'Enter your email id',),
              const Align(
                alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.0,bottom: 10),
                    child: Text('Gender',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.black),),
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 20.0,right: 20,bottom: 15),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.greycolor), // Grey border
                    borderRadius: BorderRadius.circular(10), // Circular corners
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left:15.0),
                        child: Text('Male/Female',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: AppColors.greycolor),),
                      ),
                      Icon(Icons.arrow_right)
                    ],
                  ),
                ),
              ),

              const SingleTextFieldWidget(labelText: 'Mobile Number', hintText: 'Mobile number',),
              const SingleTextFieldWidget(labelText: 'Role', hintText: 'What is your role?',),
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.0,bottom: 10),
                    child: Text('Date of Birth',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.black),),
                  )),
          Padding(
            padding: const EdgeInsets.only(left: 20.0,right: 20),
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.mediumgrey),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [



                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: TextFormField(
                        readOnly: true,
                        decoration: const InputDecoration(
                          hintText: 'Enter DOB', hintStyle: TextStyle(color: AppColors.greycolor, fontSize: 16,fontWeight: FontWeight.w400),
                          border: InputBorder.none,
                        ),
                        controller: TextEditingController(
                          text: selectedDate != null
                              ? DateFormat('dd-MM-yyyy').format(selectedDate!)
                              : '', // Format the selected date or display an empty string
                        ),
                      ),
                    ),
                  ),

                  InkWell(
                    onTap: () async {
                      final pickedDate = await showDatePicker(
                        context: context,
                        initialDate: selectedDate ?? DateTime.now(),
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2101),
                      );

                      if (pickedDate != null) {
                        setState(() {
                          selectedDate = pickedDate;
                        });
                      }
                    },
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Image.asset('assets/images/calendar-2.png'),
                      ),
                    ),
                  ),
                ],
              ),
            ),

          ),
              const SizedBox(height: 20,),
              const SingleTextFieldWidget(labelText: 'Country', hintText: 'Enter your country name',),
              const SizedBox(height: 50),
              ElevationButton(
                text: 'Save Changes',
                onPressed: () {
               //   String companyID = companyIDController.text.trim();

                  // if (companyID.isEmpty) {
                  //   // Show snackbar if company ID is empty
                  //   ScaffoldMessenger.of(context).showSnackBar(
                  //     SnackBar(
                  //       content: Text('Please enter your company ID.'),
                  //     ),
                  //   );
                  // } else {
                  //   // Add your button click logic here
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const TeamRolePage()),
                    );
                  // }
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
