
import 'package:flutter/material.dart';
import 'package:flutter_pms_v2_team/views/screen/project_screen/widget/new_container%20widget.dart';
import 'package:flutter_pms_v2_team/views/screen/project_screen/widget/project_info_widget.dart';
import 'package:flutter_pms_v2_team/views/screen/project_screen/widget/project_screen_banner_widget.dart';
import 'package:flutter_pms_v2_team/views/screen/project_screen/widget/project_statistics_widget.dart';
import 'package:flutter_pms_v2_team/views/widgets/const_color.dart';

import '../../widgets/dot_line_widget.dart';
import '../../widgets/inprogress_container_widget.dart';
import '../frontHomeScreen/widget/segmented_control button.dart';
class ProjectScreen2 extends StatefulWidget {
  const ProjectScreen2({super.key});

  @override
  State<ProjectScreen2> createState() => _ProjectScreen2State();
}

class _ProjectScreen2State extends State<ProjectScreen2> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.whitecolor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomRowWidget(labelText: "l-Service project"),
              const ProjectStatisticsWidget(),
              ProjectInfoWidget(),
              const SizedBox(height: 45,),
              const Padding(
                padding: EdgeInsets.only(left: 20.0,right: 20),
                child: AllProjectContainerWidget2(text: 'xnbbvhgvhcgcgcgfcgcgfcgfc uyg jhghgg jhgjvvjhvbhjv bsd jbdsbf jhbfjhbfsbf dnmnds bbsdnk jsbjsbj jdfjsdf kjsdbfjksf kbfkjbsjf khdjfgaee jhlshdiulahfiu kjhfjkhewi kiuhdiu bjb', max: 0.5,),
              ),
              const SizedBox(height: 45,),
              const DotLineWidget(),

              const SizedBox(height: 45,),

              const SegmentedControl(),
              const SizedBox(height: 60,),
              Image.asset("assets/images/Frame .png"),
              SizedBox(height: 10,),
              Text('No version upcoming',style: TextStyle(color: Color(0xFF595454)),)


            ],
          ),
        ),
      ),
    );
  }
}
