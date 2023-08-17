import 'package:flutter/material.dart';
import 'package:flutter_pms_v2_team/views/screen/project_screen/project_details_pending_screen.dart';
import 'package:flutter_pms_v2_team/views/screen/project_screen/widget/all_project_widget.dart';
import 'package:flutter_pms_v2_team/views/screen/project_screen/widget/container_widget.dart';
import 'package:flutter_pms_v2_team/views/screen/project_screen/widget/drop_down_button.dart';
import 'package:flutter_pms_v2_team/views/widgets/const_color.dart';

import '../../widgets/design_container_widget.dart';
import '../frontHomeScreen/widget/floating_action_button.dart';
class ProjectScreen extends StatefulWidget {
  const ProjectScreen({super.key});

  @override
  State<ProjectScreen> createState() => _ProjectScreenState();
}

class _ProjectScreenState extends State<ProjectScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.whitecolor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0,right: 20,top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [


                    const Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 60.0),
                          child: Text(
                            "Projects",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          "You have 20 projects",
                          style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15, color:AppColors.greycolor),

                        ),
                      ],
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 2.0),
                      child: SizedBox(
                        height: 30,
                        width: 30,
                        child: Transform.scale(
                            scale: 1.2,
                            child: Image.asset('assets/images/ghantaIconpng.png')),
                      ),
                    ),


                  ],
                ),
              ),
              const SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(left: 20.0,right: 20),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: AppColors.greycolor),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: const Row(
                    children: [
                      Expanded( // Use Expanded widget to allow the TextField to take available space
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Search for project',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      Icon(Icons.search),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(left: 20.0,right: 20),
                child: Row(

                  children: [
                    Expanded(
                      child: Container(
                        height: 90,
                        width: 170,
                        decoration: BoxDecoration(
                          color: AppColors.bluegreycolor,
                          borderRadius: BorderRadius.circular(10.0), // Make the corners circular
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Expanded(
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Column(

                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 18.0, right: 35),
                                      child: Text(
                                        '2',
                                        style: TextStyle(
                                          color: AppColors.deepgreycolor,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Padding(
                                      padding: EdgeInsets.only(left: 18.0),
                                      child: Text(
                                        'Problem',
                                        style: TextStyle(
                                          color: AppColors.deepgreycolor,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10.0),
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  color: AppColors.bluegreycolor,
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Transform.scale(
                                  scale: 0.8,
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 2.0),
                                    child: Image.asset('assets/images/stickynote.png'),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 15,),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Container(
                          height: 90,
                          width: 170,
                          decoration: BoxDecoration(
                            color: AppColors.bluegreycolor,
                            borderRadius: BorderRadius.circular(10.0), // Make the corners circular
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Expanded(
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Column(

                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(top: 18.0, right: 20),
                                        child: Text(
                                          '32',
                                          style: TextStyle(
                                            color:AppColors.deepgreycolor,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Padding(
                                        padding: EdgeInsets.only(left: 18.0),
                                        child: Text(
                                          'Pending',
                                          style: TextStyle(
                                            color: AppColors.deepgreycolor,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10.0),
                                child: Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    color: AppColors.greycolor,
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  child: Transform.scale(
                                    scale: 0.8,
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 2.0),
                                      child: Image.asset('assets/images/stickynote.png'),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),



                  ],
                ),
              ),
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 20.0,right: 20),
                child: Row(

                  children: [
                    Expanded(
                      child: Container(
                        height: 90,
                        width: 170,
                        decoration: BoxDecoration(
                          color: AppColors.bluegreycolor,
                          borderRadius: BorderRadius.circular(10.0), // Make the corners circular
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Expanded(
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Column(

                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 18.0, right: 35),
                                      child: Text(
                                        '53',
                                        style: TextStyle(
                                          color: AppColors.deepgreycolor,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Padding(
                                      padding: EdgeInsets.only(left: 18.0),
                                      child: Text(
                                        'In-progress',
                                        style: TextStyle(
                                          color: AppColors.deepgreycolor,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10.0),
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  color: AppColors.greycolor,
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Transform.scale(
                                  scale: 0.8,
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 2.0),
                                    child: Image.asset('assets/images/stickynote.png'),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 15,),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Container(
                          height: 90,
                          width: 170,
                          decoration: BoxDecoration(
                            color: AppColors.bluegreycolor,
                            borderRadius: BorderRadius.circular(10.0), // Make the corners circular
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Expanded(
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Column(

                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(top: 18.0, right: 35),
                                        child: Text(
                                          '120',
                                          style: TextStyle(
                                            color: AppColors.deepgreycolor,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Padding(
                                        padding: EdgeInsets.only(left: 18.0),
                                        child: Text(
                                          'Completed',
                                          style: TextStyle(
                                            color: AppColors.deepgreycolor,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10.0),
                                child: Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    color: AppColors.greycolor,
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  child: Transform.scale(
                                    scale: 0.8,
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 2.0),
                                      child: Image.asset('assets/images/stickynote.png'),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),



                  ],
                ),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 23.0,top: 20),
                    child: Text('All Projects',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: AppColors.blackcolor),),
                  )),
              const SizedBox(height: 10,),
               const Padding(
                padding: EdgeInsets.only(left: 23),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Text('Filter :',style: TextStyle(color: AppColors.deepgreycolor,fontSize: 18,fontWeight: FontWeight.w400),),
                       SizedBox(width: 60,),
                       MultipleDropDownsRow()
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 5.0,right: 5.0),
                child: SizedBox(
                  height: 600,
                  child: Column(
                    children: buildContainerWidgets(context),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomBottomNavigationBar(),// Call the FloatingActionButtonWidget here
    );
  }
}
