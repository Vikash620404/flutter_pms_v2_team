import 'package:flutter/material.dart';
import 'package:flutter_pms_v2_team/views/screen/project_screen/project_screen.dart';
import 'package:flutter_pms_v2_team/views/screen/project_screen/version_list_screen.dart';
import 'package:flutter_pms_v2_team/views/screen/project_screen/widget/new_container%20widget.dart';
import 'package:flutter_pms_v2_team/views/screen/project_screen/widget/project_circular_progress_widget.dart';
import 'package:flutter_pms_v2_team/views/screen/project_screen/widget/project_info_widget.dart';
import 'package:flutter_pms_v2_team/views/screen/project_screen/widget/project_screen_banner_widget.dart';
import 'package:flutter_pms_v2_team/views/screen/project_screen/widget/project_statistics_widget.dart';
import 'package:flutter_pms_v2_team/views/screen/project_screen/widget/segmented_control_project_statics_widget.dart';
import 'package:flutter_pms_v2_team/views/screen/project_screen/widget/underline-button_widget1.dart';
import 'package:flutter_pms_v2_team/views/screen/project_screen/widget/underline_botton_widget.dart';
import 'package:flutter_pms_v2_team/views/screen/project_screen/widget/version_container_widget.dart';
import 'package:flutter_pms_v2_team/views/widgets/dot_line_widget.dart';

import '../../widgets/const_color.dart';
import '../frontHomeScreen/widget/segmented_control button.dart';
import '../profile_screen/widget/container_list_widget_general.dart';
class ProjectDetailPendingScreen extends StatefulWidget {
  const ProjectDetailPendingScreen({super.key});

  @override
  State<ProjectDetailPendingScreen> createState() => _ProjectDetailPendingScreenState();
}

class _ProjectDetailPendingScreenState extends State<ProjectDetailPendingScreen> {
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
                        builder: (context) => const ProjectScreen(),
                      ),
                    );
                  },
                  child: CustomRowWidget(labelText: "l-Service project")),
              const CircularProgressBarProjectWidget(),
              const SizedBox(height: 45,),
              Padding(
                padding: const EdgeInsets.only(left: 20.0,right: 20),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.whitecolor,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: AppColors.lightgreycolor),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0,right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(


                              children: <Widget>[
                                const SizedBox(width: 10,),
                                Image.asset('assets/images/3square.png'),
                                const SizedBox(width: 10,),
                                const Text('Version Available (3)',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: AppColors.deepgreycolor),),

                              ],
                            ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const VersionListScreen()),
                          );
                        },
                        child: const Text(
                          'View All',
                          style: TextStyle(decoration: TextDecoration.underline),
                        ),
                    ),
                  ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 40),
                                  child: Text('3',style: TextStyle(fontSize: 19,fontWeight: FontWeight.w600,color: AppColors.deepgreycolor),),
                                ),

                                Text('0',style: TextStyle(fontSize: 19,fontWeight: FontWeight.w600,color: AppColors.deepgreycolor),),
                                Padding(
                                  padding: EdgeInsets.only(right: 40.0),
                                  child: Text('0',style: TextStyle(fontSize: 19,fontWeight: FontWeight.w600,color: AppColors.deepgreycolor),),
                                ),

                              ],
                            ),
                            UnderlineButtonWidget1(),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),

              ProjectInfoWidget(),
              const Padding(
                padding: EdgeInsets.only(left: 20.0,right: 20,bottom: 40),
                child: AllProjectContainerWidget2(text: 'xnbbvhgvhcgcgcgfcgcgfcgfc uyg jhghgg jhgjvvjhvbhjv bsd jbdsbf jhbfjhbfsbf dnmnds bbsdnk jsbjsbj jdfjsdf kjsdbfjksf kbfkjbsjf khdjfgaee jhlshdiulahfiu kjhfjkhewi kiuhdiu bjb', max: 0.5,),
              ),



             


            ],
          ),
        ),
      ),
    );
  }
}
