import 'package:flutter/material.dart';
import 'package:flutter_pms_v2_team/views/screen/version2_statistics/widget/version2_elevation_button_material.dart';

class SegmentedControlVersion2Widget extends StatefulWidget {
  const SegmentedControlVersion2Widget({Key? key}) : super(key: key);

  @override
  State<SegmentedControlVersion2Widget> createState() => _SegmentedControlVersion2WidgetState();
}

class _SegmentedControlVersion2WidgetState extends State<SegmentedControlVersion2Widget> {
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
                    border: Border.all(color: const Color(0xFFC6C6C6)),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Row(
                    children: [
                      _buildButton(0, 'In progress'),
                      _buildButton(1, 'Completed'),
                      _buildButton(2, 'Upcoming'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20), // Add some spacing
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
              height: 500,
              child: ListView.builder(
                itemCount: 2, // Replace with the number of versions you have
                itemBuilder: (context, index) {
                  return VersionItem(
                    versionTitle: 'Client Module ${index + 1}',
                    imagePath2: 'assets/images/arrow-right.png',
                    moduleText2: '8 Milestones . Website',
                    imagePath3: 'assets/images/flag.png',
                    moduleText: 'Due in 10 days',
                    imagePath: 'assets/images/timer.png', // Change the image path accordingly
                    versionStatus: 'In Progress',
                  );

                },
              ),
            ),

          ],
          if (selectedIndex == 1) ...[
            SizedBox(
              height: 500,
              child: ListView.builder(
                itemCount: 3, // Replace with the number of versions you have
                itemBuilder: (context, index) {
                  return VersionItem(
                    versionTitle: 'Client Module ${index + 1}',
                    imagePath2: 'assets/images/arrow-right.png',
                    moduleText2: '8 Milestones . Website',
                    imagePath3: 'assets/images/flag.png',
                    moduleText: 'August 20th 2023',
                    imagePath: 'assets/images/calendar.png', // Change the image path accordingly
                    versionStatus: 'Completed',
                  );

                },
              ),
            ),


          ],
          if (selectedIndex == 2) ...[
            SizedBox(height: 20),
            Image.asset("assets/images/triplelayer.png"),
            SizedBox(height: 10),
            Text(
              'No version upcoming',
              style: TextStyle(color: Color(0xFF595454)),
            ),
          ],

        ],
      ),
    );
  }
}

