import 'package:flutter/material.dart';

import 'const_color.dart';
import 'design_application_container_widget.dart';

class TwoSegmentedControl extends StatefulWidget {
  const TwoSegmentedControl({Key? key}) : super(key: key);

  @override
  State<TwoSegmentedControl> createState() => _TwoSegmentedControlState();
}

class _TwoSegmentedControlState extends State<TwoSegmentedControl> {
  int _selectedIndex = 0;

  final List<Widget> _contentList = [
    SizedBox(
      height: 600,
      child: ListView.builder(

        itemCount: 4, // Three CustomContentWidget instances
        itemBuilder: (context, index) {
          if (index == 0) {
            return CustomContentWidget(
              imagePath: 'assets/images/layer.png',
              text: 'l-service project',
              styleGuideText: 'Style Guides',
              arrowImage: 'assets/images/arrow-right.png',
              progressBarText: 'Progress',
              progressBarValue: 0.6,
            );
          } else if (index == 1) {
            return CustomContentWidget(
              imagePath: 'assets/images/layer.png',
              text: 'l-service project',
              styleGuideText: 'Mobile app design',
              arrowImage: 'assets/images/arrow-right.png',
              progressBarText: 'Progress',
              progressBarValue: 0.6,
            );
          } else if (index == 2) {
            return CustomContentWidget(
              imagePath: 'assets/images/layer.png',
              text: 'Deffin Delivery',
              styleGuideText: 'Testing design',
              arrowImage: 'assets/images/arrow-right.png',
              progressBarText: 'Progress',
              progressBarValue: 0.4,
            );
          }else if (index == 3) {
            return CustomContentWidget(
              imagePath: 'assets/images/layer.png',
              text: 'Deffin Delivery',
              styleGuideText: 'Development',
              arrowImage: 'assets/images/arrow-right.png',
              progressBarText: 'Progress',
              progressBarValue: 0.9,
            );
          }


          else {
            return const SizedBox(); // Return an empty widget for other indexes
          }
        },
      ),
    ),
    SizedBox(
      height: 600,
      child: ListView.builder(

        itemCount: 4, // Three CustomContentWidget instances
        itemBuilder: (context, index) {
          if (index == 0) {
            return CustomContentWidget(
              imagePath: 'assets/images/layer.png',
              text: 'l-service project',
              styleGuideText: 'Style Guides',
              arrowImage: 'assets/images/arrow-right.png',
              progressBarText: 'Progress',
              progressBarValue: 1.0,
            );
          } else if (index == 1) {
            return CustomContentWidget(
              imagePath: 'assets/images/layer.png',
              text: 'l-service project',
              styleGuideText: 'Mobile app design',
              arrowImage: 'assets/images/arrow-right.png',
              progressBarText: 'Progress',
              progressBarValue: 1.0,
            );
          } else if (index == 2) {
            return CustomContentWidget(
              imagePath: 'assets/images/layer.png',
              text: 'Deffin Delivery',
              styleGuideText: 'Testing design',
              arrowImage: 'assets/images/arrow-right.png',
              progressBarText: 'Progress',
              progressBarValue: 1.0,
            );
          }else if (index == 3) {
            return CustomContentWidget(
              imagePath: 'assets/images/layer.png',
              text: 'Deffin Delivery',
              styleGuideText: 'Development',
              arrowImage: 'assets/images/arrow-right.png',
              progressBarText: 'Progress',
              progressBarValue: 1.0,
            );
          }


          else {
            return const SizedBox(); // Return an empty widget for other indexes
          }
        },
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border.all(color:  AppColors.lightgreycolor),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Row(
                    children: [
                      _buildButton(0, 'In progress'),
                      _buildButton(1, 'Completed'),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          _contentList[_selectedIndex],
        ],
      ),
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
            color: _selectedIndex == index ?  AppColors.lightgreycolor : AppColors.whitecolor,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              label,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: _selectedIndex == index ? AppColors.whitecolor :  AppColors.blackcolor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
