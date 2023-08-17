import 'package:flutter/material.dart';
import 'package:flutter_pms_v2_team/views/screen/profile_screen/widget/container_list_widget_general.dart';
import 'package:flutter_pms_v2_team/views/screen/profile_screen/widget/container_list_widget_personal.dart';
import 'package:flutter_pms_v2_team/views/screen/profile_screen/widget/segmented_control_widget.dart';
import 'package:flutter_pms_v2_team/views/screen/profile_screen/widget/task_assigned_container_widget.dart';

import '../../widgets/const_color.dart';
import '../frontHomeScreen/widget/floating_action_button.dart';
import 'edit_profile_screen.dart';
class ProfileScreen1 extends StatefulWidget {
  const ProfileScreen1({super.key});

  @override
  State<ProfileScreen1> createState() => _ProfileScreen1State();
}

class _ProfileScreen1State extends State<ProfileScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
Padding(
  padding: const EdgeInsets.only(left: 20.0,right: 20.0,top: 40),
  child:   Row(

    mainAxisAlignment: MainAxisAlignment.spaceBetween,

    children: [



    const Text('Profile',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 17,color: AppColors.deepgreycolor),),

    Row(

      children: [

        Image.asset('assets/images/pencil.png'),

        SizedBox(width: 8,),

        const Text('Edit',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500,color: AppColors.deepgreycolor),),





      ],

    ),

  ],),
),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: 90,
                              width: 90,
                              decoration: BoxDecoration(
                                color: AppColors.lightgreycolor,
                                borderRadius: BorderRadius.circular(45),
                              ),
                            ),
                            Positioned(
                              bottom: -8.5, // Half of the image height (45 / 2)
                              right: 0,
                              left:60,
                              child: Image.asset(
                                'assets/images/editImageIcon.png', // Replace with your actual image path
                                height: 45,
                                width: 45,
                              ),
                            ),
                          ],
                        ),
                        const Column(children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10.0),
                            child: Text('Vikram Jha',style:TextStyle(fontSize: 15,fontWeight: FontWeight.w700,color: Colors.black)),
                          ),
                          SizedBox(height: 8,),
                          Padding(
                            padding: EdgeInsets.only(left: 15.0),
                            child: Text('UI/UX Designer',style: TextStyle(fontWeight: FontWeight.w300,fontSize: 12),),
                          ),
                        ],)
                      ],
                    ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const EditProfileScreen(),
                ),
              );
            },
            child: Image.asset('assets/images/leftContainerImage.png'),
          ),

                  ],
                ),
              ),


              TaskAssignedWidget(),
              const SizedBox(height: 30,),
              const SegmentedControlWidget(),






            ],
          ),
        ),


      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
