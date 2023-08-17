import 'package:flutter/material.dart';
import 'package:flutter_pms_v2_team/views/screen/module/milestone_list_screen.dart';
import 'package:flutter_pms_v2_team/views/screen/project_screen/project_details_pending_screen.dart';
import 'package:flutter_pms_v2_team/views/screen/project_screen/widget/all_project_widget.dart';
import 'package:flutter_pms_v2_team/views/screen/project_screen/widget/container_widget.dart';
import 'package:flutter_pms_v2_team/views/screen/project_screen/widget/drop_down_button.dart';
import 'package:flutter_pms_v2_team/views/screen/select/select_milestone_screen.dart';
import 'package:flutter_pms_v2_team/views/screen/select/select_version_screen.dart';
import 'package:flutter_pms_v2_team/views/screen/select/widget/two_elevation_button.dart';
import 'package:flutter_pms_v2_team/views/widgets/const_color.dart';

import '../../widgets/design_container_widget.dart';
import '../frontHomeScreen/widget/floating_action_button.dart';
import '../project_screen/widget/project_screen_banner_widget.dart';
import '../project_screen/widget/version_list_container_widget.dart';
import '../taskDetail/create_task_screen.dart';
class SelectModuleScreen extends StatefulWidget {
  const SelectModuleScreen({super.key});

  @override
  State<SelectModuleScreen> createState() => _SelectModuleScreenState();
}

class _SelectModuleScreenState extends State<SelectModuleScreen> {
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
                      MaterialPageRoute(
                        builder: (context) => const SelectVersionScreen(),
                      ),
                    );
                  },
                  child: CustomRowWidget(labelText: 'Select Module',)),
              const SizedBox(height: 20,),
              const Padding(
                padding: EdgeInsets.only(left: 50.0),
                child: Center(child: Text('3/5 steps')),
              ),

              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SelectMilestoneScreen()),
                  );
                },
                child: const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: SegmentedButtonShowCard(
                    title: 'Dealer Module',
                    flagImage: 'assets/images/flag.png',
                    mileText: '4 Modules',
                    webText: 'Expected in 8 days',
                    dotImage: 'assets/images/dotImage.png',
                    webTextStyle: TextStyle(color: AppColors.greycolor), onPressed: null,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const CreateTaskScreen()),
                  );
                },
                child: const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: SegmentedButtonShowCard(
                    title: 'Client Module',
                    flagImage: 'assets/images/flag.png',
                    mileText: '4 Modules',
                    webText: 'Expected in 8 days',
                    dotImage: 'assets/images/dotImage.png',
                    webTextStyle: TextStyle(color: AppColors.greycolor), onPressed: null,
                  ),
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
