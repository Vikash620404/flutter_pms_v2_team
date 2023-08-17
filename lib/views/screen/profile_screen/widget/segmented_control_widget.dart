import 'package:flutter/material.dart';
import 'package:flutter_pms_v2_team/views/screen/version2_statistics/widget/version2_elevation_button_material.dart';

import '../../../widgets/const_color.dart';
import '../../../widgets/design_application_container_widget.dart';
import 'container_list_widget_general.dart';
import 'container_list_widget_personal.dart';


class SegmentedControlWidget extends StatefulWidget {
  const SegmentedControlWidget({Key? key}) : super(key: key);

  @override
  State<SegmentedControlWidget> createState() => _SegmentedControlWidgetState();
}

class _SegmentedControlWidgetState extends State<SegmentedControlWidget> {
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
                    border: Border.all(color: AppColors.lightgreycolor),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Row(
                    children: [
                      _buildButton(0, 'General'),
                      _buildButton(1, 'Personal'),

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
            color: _selectedIndex == index ? const Color(0xFFC6C6C6) : Colors.white,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              label,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: _selectedIndex == index ? Colors.white : Colors.black,
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
            SizedBox(
              height: 300,
              child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) {
                  final List<Map<String, String>> items = [
                    {
                      'imageAsset': 'assets/images/people.png',
                      'text': 'Team Member',
                    },
                    {
                      'imageAsset': 'assets/images/key-square.png',
                      'text': 'Change Password',
                    },
                    {
                      'imageAsset': 'assets/images/call.png',
                      'text': 'Contact Support',
                    },
                    {
                      'imageAsset': 'assets/images/login.png',
                      'text': 'Logout',
                    },
                  ];

                  final imageAsset = items[index]['imageAsset']!;
                  final text = items[index]['text']!;

                  return Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: CustomListItem(
                      imageAsset: imageAsset,
                      text: text,
                    ),
                  );
                },
              ),
            )
          ],
          if (selectedIndex == 1) ...[
            SizedBox(
              height: 300,
              child: ListView.builder(
                itemCount: 6,
                itemBuilder: (context, index) {
                  final List<Map<String, String>> items = [
                    {
                      'imageAsset': 'assets/images/briefcase.png',
                      'text': 'Role',
                      'text1':'UI/UX Designer'
                    },
                    {
                      'imageAsset': 'assets/images/sms.png',
                      'text': 'Email ID',
                      'text1':'Vikash@gmail.com'
                    },
                    {
                      'imageAsset': 'assets/images/call.png',
                      'text': 'Mobile Number',
                      'text1':'656498494444'
                    },
                    {
                      'imageAsset': 'assets/images/profile3.png',
                      'text': 'Gender',
                      'text1':'Male/Female'
                    },
                    {
                      'imageAsset': 'assets/images/calendar2.png',
                      'text': 'Date of Birth',
                      'text1':'28-07-1998'
                    },
                    {
                      'imageAsset': 'assets/images/global.png',
                      'text': 'Country',
                      'text1':'India'
                    },
                  ];

                  final imageAsset = items[index]['imageAsset']!;
                  final text = items[index]['text']!;
                  final text1 = items[index]['text1']!;

                  return Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: CustomListItemPersonal(
                      imageAsset: imageAsset,
                      text: text,
                      text1: text1,
                    ),
                  );
                },
              ),
            )
          ],


        ],
      ),
    );
  }
}

