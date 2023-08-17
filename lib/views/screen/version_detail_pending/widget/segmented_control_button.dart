import 'package:flutter/material.dart';
import 'package:flutter_pms_v2_team/views/screen/project_screen/widget/version_list_container_widget.dart';
import 'package:flutter_pms_v2_team/views/screen/version2_statistics/widget/version2_elevation_button_material.dart';

import '../../../widgets/const_color.dart';

class SegemntedControlModuleList extends StatefulWidget {
  const SegemntedControlModuleList({Key? key}) : super(key: key);

  @override
  State<SegemntedControlModuleList> createState() =>
      _SegemntedControlModuleListState();
}

class _SegemntedControlModuleListState
    extends State<SegemntedControlModuleList> {
  int _selectedIndex = 0;

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
            color: _selectedIndex == index
                ? AppColors.greycolor
                : AppColors.whitecolor,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              label,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: _selectedIndex == index
                    ? AppColors.whitecolor
                    : AppColors.blackcolor,
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

  const VersionContainerWidget({Key? key, required this.selectedIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          if (selectedIndex == 0) ...[
            const SegmentedButtonShowCard(
              title: 'Client Module 1',
              flagImage: 'assets/images/flag.png',
              mileText: '4 Modules',
              webText: 'Expected in 8 days',
              dotImage: 'assets/images/dotImage.png', webTextStyle: TextStyle(color: AppColors.greycolor), onPressed: null,
            ),
            const SizedBox(height: 20,),
            const SegmentedButtonShowCard(
              title: 'Dealer Module',
              flagImage: 'assets/images/flag.png',
              mileText: '4 Modules',
              webText: 'Expected in 8 days',
              dotImage: 'assets/images/dotImage.png', webTextStyle: TextStyle(color: AppColors.greycolor), onPressed: null,
            ),
            const SizedBox(height: 20,),
            const SegmentedButtonShowCard(
              title: 'Delivery Boy Module',
              flagImage: 'assets/images/flag.png',
              mileText: '4 Modules',
              webText: 'Expected in 8 days',
              dotImage: 'assets/images/dotImage.png', webTextStyle: TextStyle(color: AppColors.greycolor), onPressed: null,
            )
          ],
          if (selectedIndex == 1) ...[
            const SegmentedButtonShowCard(
              title: 'Dealer Module',
              flagImage: 'assets/images/flag.png',
              mileText: '4 Modules',
              webText: 'Overdue for 20 days',
              dotImage: 'assets/images/dotImage.png',  webTextStyle: TextStyle(color: AppColors.greycolor), onPressed: null,
            ),
            SizedBox(height: 20,),
            const SegmentedButtonShowCard(
              title: 'Client Module',
              flagImage: 'assets/images/flag.png',
              mileText: '4 Modules',
              webText: 'Overdue for 20 days',
              dotImage: 'assets/images/dotImage.png',  webTextStyle: TextStyle(color: AppColors.greycolor), onPressed: null,
            )
          ],
          if (selectedIndex == 2) ...[
            const SegmentedButtonShowCard(
              title: 'Client Module',
              flagImage: 'assets/images/flag.png',
              mileText: '4 Modules',
              webText: 'Overdue for 20 days',
              dotImage: 'assets/images/dotImage.png',  webTextStyle: TextStyle(color: AppColors.greycolor), onPressed: null,
            ),
            SizedBox(height: 20,),
            const SegmentedButtonShowCard(
              title: 'Service Engineer Module',
              flagImage: 'assets/images/flag.png',
              mileText: '4 Modules',
              webText: 'Overdue for 20 days',
              dotImage: 'assets/images/dotImage.png',  webTextStyle: TextStyle(color: AppColors.greycolor), onPressed: null,
            ),
            const SizedBox(height: 20,),
            const SegmentedButtonShowCard(
              title: 'Service Engineer Module',
              flagImage: 'assets/images/flag.png',
              mileText: '4 Modules',
              webText: 'Overdue for 20 days',
              dotImage: 'assets/images/dotImage.png',  webTextStyle: TextStyle(color: AppColors.greycolor), onPressed: null,
            )

          ],
        ],
      ),
    );
  }
}
