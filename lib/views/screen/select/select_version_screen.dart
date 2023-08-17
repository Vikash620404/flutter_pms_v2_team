import 'package:flutter/material.dart';
import 'package:flutter_pms_v2_team/views/screen/project_screen/project_details_pending_screen.dart';
import 'package:flutter_pms_v2_team/views/screen/project_screen/widget/all_project_widget.dart';
import 'package:flutter_pms_v2_team/views/screen/project_screen/widget/container_widget.dart';
import 'package:flutter_pms_v2_team/views/screen/project_screen/widget/drop_down_button.dart';
import 'package:flutter_pms_v2_team/views/screen/select/select_module_screen.dart';
import 'package:flutter_pms_v2_team/views/screen/select/select_project_screen.dart';
import 'package:flutter_pms_v2_team/views/screen/select/widget/two_elevation_button.dart';
import 'package:flutter_pms_v2_team/views/widgets/const_color.dart';

import '../../widgets/design_container_widget.dart';
import '../frontHomeScreen/widget/floating_action_button.dart';
import '../project_screen/widget/project_screen_banner_widget.dart';
import '../project_screen/widget/version_list_container_widget.dart';
class SelectVersionScreen extends StatefulWidget {
  const SelectVersionScreen({super.key});

  @override
  State<SelectVersionScreen> createState() => _SelectVersionScreenState();
}

class _SelectVersionScreenState extends State<SelectVersionScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.whitecolor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SelectModuleScreen()),
              );
            },
            child: Column(
              children: [

                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SelectProjectScreen(),
                        ),
                      );
                    },child: CustomRowWidget(labelText: 'Select Version',)),
                const SizedBox(height: 20,),
                const Padding(
                  padding: EdgeInsets.only(left: 50.0),
                  child: Center(child: Text('2/5 steps')),
                ),
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: SegmentedButtonShowCard(
                    title: 'Version 1',
                    flagImage: 'assets/images/element-3.png',
                    mileText: '4 Modules',
                    webText: 'Expected in 8 days',
                    dotImage: 'assets/images/dotImage.png', webTextStyle: TextStyle(color: AppColors.greycolor), onPressed: null,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: SegmentedButtonShowCard(
                    title: 'Version 2',
                    flagImage: 'assets/images/element-3.png',
                    mileText: '4 Modules',
                    webText: 'Expected in 8 days',
                    dotImage: 'assets/images/dotImage.png', webTextStyle: TextStyle(color: AppColors.greycolor), onPressed: null,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: SegmentedButtonShowCard(
                    title: 'Version 3',
                    flagImage: 'assets/images/element-3.png',
                    mileText: '4 Modules',
                    webText: 'Expected in 8 days',
                    dotImage: 'assets/images/dotImage.png', webTextStyle: TextStyle(color: AppColors.greycolor), onPressed: null,
                  ),
                ),
                SizedBox(height: 600,),
                TwoElevationButtons()
              ],
            ),
          ),

        ),
      ),
      // Call the FloatingActionButtonWidget here
    );
  }
}
