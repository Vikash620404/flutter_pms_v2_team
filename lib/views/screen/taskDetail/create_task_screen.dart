import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pms_v2_team/views/screen/profile_screen/widget/create_task_dropdown_widget.dart';
import 'package:flutter_pms_v2_team/views/screen/profile_screen/widget/date_picker_widget.dart';
import 'package:flutter_pms_v2_team/views/screen/profile_screen/widget/select_module_container.dart';
import 'package:flutter_pms_v2_team/views/screen/profile_screen/widget/text_form_field_widget.dart';
import 'package:flutter_pms_v2_team/views/screen/select/select_milestone_screen.dart';
import 'package:flutter_pms_v2_team/views/widgets/const_color.dart';
import 'package:intl/intl.dart';

import '../auth/widget/elevation_button_widget.dart';
import '../project_screen/widget/project_screen_banner_widget.dart';
class CreateTaskScreen extends StatefulWidget {
  const CreateTaskScreen({super.key});

  @override
  State<CreateTaskScreen> createState() => _CreateTaskScreenState();
}

class _CreateTaskScreenState extends State<CreateTaskScreen> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whitecolor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SelectMilestoneScreen(),
                      ),
                    );
                  },
                  child: CustomRowWidget(labelText: 'Create Task',)),
              const Align(
                  alignment:Alignment.centerLeft,child: Padding(
                    padding: EdgeInsets.only(left: 20.0,top: 20),
                    child: Text('Select Project',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: AppColors.blackcolor),),
                  )),
              SelectProjectContainerWidget(),

              const Align(
                  alignment:Alignment.centerLeft,child: Padding(
                padding: EdgeInsets.only(left: 20.0,top: 25),
                child: Text('Select module',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: AppColors.blackcolor),),
              )),
              SelectModuleContainerWidget(),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: SingleTextFieldProfile(labelText: 'Task title', hintText: 'Mobile app design',),


              ),
              const Align(
                  alignment:Alignment.centerLeft,child: Padding(
                padding: EdgeInsets.only(left: 20.0,bottom: 10),
                child: Text('Task description',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: AppColors.blackcolor),),
              )),
              Padding(
                padding: const EdgeInsets.only(left: 20.0,right: 20),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors.mediumgrey, // Border color
                    ),
                    borderRadius: BorderRadius.circular(10), // Circular border radius
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      'hbs nsdj njnjin jhjhbjbds j idsbvjhsb jbsdhbjsdhb j jbvdb  shbs jhbhbvs abubfdhfsu auhfoiuhfiou hsdhbhbjdsb hhsbahabb hsbvhsb hsdbfsdbbhbsdfisb hbfhabi  fidhfhb fffbuhiuhsbf',
                    ),
                  ),
                ),
              ),
              const Align(
                  alignment:Alignment.centerLeft,child: Padding(
                padding: EdgeInsets.only(left: 20.0,bottom: 10,top: 25),
                child: Text('Start date',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: AppColors.blackcolor),),
              )),

              const DatePicker(),
              const Padding(
                padding: EdgeInsets.only(left: 20.0,right: 20,bottom: 10,top: 25),
                child: SingleTextFieldProfile(labelText: 'Estimated days', hintText: '20',),

              ),
              const Padding(
                padding: EdgeInsets.only(left: 20.0,right: 20,top: 20),
                child: SingleTextFieldProfile(labelText: 'Assign member(optional)', hintText: 'Vikaram jha',),

              ),

              const Align(
                  alignment:Alignment.centerLeft,child: Padding(
                padding: EdgeInsets.only(left: 20.0,bottom: 10,top: 25),
                child: Text('Add photo(optional)',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: AppColors.blackcolor),),
              )),
          Padding(
            padding: const EdgeInsets.only(left: 20.0,right: 20),
            child: DottedBorder(
              color: AppColors.greycolor,
              borderType: BorderType.RRect,
              radius: const Radius.circular(12),
              padding: const EdgeInsets.all(6),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(12)),
                child: Container(
                  height: 100,
                  width: double.infinity,
                  color: const Color(0xFFF3F3F3),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Column(
                        children: [
                          Image.asset('assets/images/gallery-add.png'),
                          const SizedBox(height: 10,),
                          const Text('Upload Image',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 13,color: AppColors.blackcolor),),


                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),


              const SizedBox(height: 50),
              ElevationButton(
                text: 'Create Task',
                onPressed: () {


                  // if (companyID.isEmpty) {
                  //   // Show snackbar if company ID is empty
                  //   ScaffoldMessenger.of(context).showSnackBar(
                  //     SnackBar(
                  //       content: Text('Please enter your company ID.'),
                  //     ),
                  //   );
                  // } else {
                  //   // Add your button click logic here
                  //   Navigator.push(
                  //
                  //
                  //   )
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
