import 'package:flutter/material.dart';
import 'package:flutter_pms_v2_team/views/screen/frontHomeScreen/widget/task_drop_down_widget.dart';
import 'package:flutter_pms_v2_team/views/screen/version2_statistics/widget/version2_elevation_button_material.dart';

import '../../../widgets/const_color.dart';
import '../../../widgets/design_application_container_widget.dart';
import '../../../widgets/global_app_color_widget.dart';
import '../../1st_row_all_task/task_details_screen.dart';
import '../../task/widget/check_linethrough_widget.dart';
import '../../task/widget/problem_task_list_widget.dart';
import 'home2_container_widget.dart';

import 'home3_container_widget.dart';
import 'status_container_widget.dart';
import 'task_container_widget.dart';

class SegmentedControl extends StatefulWidget {
  const SegmentedControl({Key? key}) : super(key: key);

  @override
  State<SegmentedControl> createState() => _SegmentedControlState();
}

class _SegmentedControlState extends State<SegmentedControl> {
  int _selectedIndex = 0;
  String selectedValue = 'version 1';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.greycolor),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Row(
                    children: [
                      _buildButton(0, 'Pending'),
                      _buildButton(1, 'In progress'),
                      _buildButton(2, 'Completed'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20), // Add some spacing
        VersionContainerWidget(selectedIndex: _selectedIndex),
      ],
    );
  }

  Widget _buildButton(int index, String label) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            _selectedIndex = index;
          });
        },
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: _selectedIndex == index ? AppColors.greycolor : Colors.white,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              label,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: _selectedIndex == index ? AppColors.whitecolor : AppColors.blackcolor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class VersionContainerWidget extends StatelessWidget {
  final int selectedIndex;


  const VersionContainerWidget({Key? key, required this.selectedIndex}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          if (selectedIndex == 0) ...[
            const TaskContainer(),
            const SizedBox(height: 20,),
            const StatusContainerWidget(),
          ],
          if (selectedIndex == 1) ...[

            const SizedBox(height: 20,),
            const TaskDropDownWidget(labelText: 'Task',),
            const SizedBox(height: 25,),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 6,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    // Navigate to TaskDetailScreen here
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const TaskDetailsScreen()),
                    );
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: TCheckBoxList(
                      profile2Image: 'assets/images/profile-2user.png',
                      nameText: 'Vikram Jha',
                      dotImage: 'assets/images/dot.png',
                      dueText: 'Due in 10 Days',
                      dueTextColor: subTitleTextColor,
                    ),
                  ),
                );
              },
            ),

            const SizedBox(height: 20,),
          ],
          if (selectedIndex == 2) ...[

    const TaskDropDownWidget(labelText: 'In Review',),
    const SizedBox(height: 10,),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 3,
              itemBuilder: (context, index) {
                return  const Padding(
                  padding: EdgeInsets.only(top: 40.0),
                  child: TCheckBoxLineThrough(
                    profile2Image: 'assets/images/profile-2user.png',
                    nameText: 'Vikram Jha',
                    dotImage: 'assets/images/dot.png',
                    dueText: 'Due in 10 Days',
                    dueTextColor: subTitleTextColor,
                  ),
                );
              },
            ),
            const SizedBox(height: 30,),
            const TaskDropDownWidget(labelText: 'Finalized',),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 3,
              itemBuilder: (context, index) {
                return  const Padding(
                  padding: EdgeInsets.only(top: 40.0),
                  child: TCheckBoxLineThrough(
                    profile2Image: 'assets/images/profile-2user.png',
                    nameText: 'Vikram Jha',
                    dotImage: 'assets/images/dot.png',
                    dueText: 'Due in 10 Days',
                    dueTextColor: subTitleTextColor,
                  ),
                );
              },
            ),
            SizedBox(height: 20,),


          ],

        ],
      ),
    );
  }
}

