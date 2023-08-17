import 'package:flutter/material.dart';
import 'package:flutter_pms_v2_team/views/screen/project_screen/project_details_pending_screen.dart';
import 'package:flutter_pms_v2_team/views/screen/project_screen/widget/all_project_widget.dart';
import 'package:flutter_pms_v2_team/views/screen/project_screen/widget/container_widget.dart';
import 'package:flutter_pms_v2_team/views/screen/project_screen/widget/drop_down_button.dart';
import 'package:flutter_pms_v2_team/views/screen/select/select_module_screen.dart';
import 'package:flutter_pms_v2_team/views/screen/select/widget/two_elevation_button.dart';
import 'package:flutter_pms_v2_team/views/widgets/const_color.dart';

import '../../widgets/design_container_widget.dart';
import '../frontHomeScreen/widget/floating_action_button.dart';
import '../project_screen/widget/project_screen_banner_widget.dart';
import '../project_screen/widget/version_list_container_widget.dart';
import '../taskDetail/create_task_screen.dart';
class SelectMilestoneScreen extends StatefulWidget {
  const SelectMilestoneScreen({super.key});

  @override
  State<SelectMilestoneScreen> createState() => _SelectMilestoneScreenState();
}

class _SelectMilestoneScreenState extends State<SelectMilestoneScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.whitecolor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SelectModuleScreen()),
                    );
                  },
                  child: CustomRowWidget(labelText: 'Select Milestone',)),
              const SizedBox(height: 20,),
              const Padding(
                padding: EdgeInsets.only(left: 50.0),
                child: Center(child: Text('4/5 steps')),
              ),
              const SizedBox(height: 20,),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const CreateTaskScreen()),
                  );
                },
                child: const Padding(
                  padding: EdgeInsets.only(left: 20.0,right:20.0),
                  child: SegmentedButtonShowCard(
                    title: 'Usability Testing',
                    flagImage: 'assets/images/task-square.png',
                    mileText: '4 Modules',
                    webText: 'Overdue for 20 days',
                    dotImage: 'assets/images/dotImage.png',  webTextStyle: TextStyle(color: AppColors.greycolor), onPressed: null,
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              const Padding(
                padding: EdgeInsets.only(left: 20.0,right: 20.0),
                child: SegmentedButtonShowCard(
                  title: 'Usability Testing',
                  flagImage: 'assets/images/task-square.png',
                  mileText: '4 Modules',
                  webText: 'Overdue for 20 days',
                  dotImage: 'assets/images/dotImage.png',  webTextStyle: TextStyle(color: AppColors.greycolor), onPressed: null,
                ),
              ),
              SizedBox(height: 600,),
              TwoElevationButtons()

            ],
          ),
        ),
      ),

    );
  }
}
