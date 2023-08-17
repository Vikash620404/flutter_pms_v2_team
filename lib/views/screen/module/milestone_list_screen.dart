import 'package:flutter/material.dart';
import 'package:flutter_pms_v2_team/views/screen/module/module_details_pending.dart';
import 'package:flutter_pms_v2_team/views/screen/project_screen/widget/project_screen_banner_widget.dart';
import 'package:flutter_pms_v2_team/views/screen/project_screen/widget/segmented_control_milestonelist.dart';
import 'package:flutter_pms_v2_team/views/screen/project_screen/widget/segmented_control_versionlist_widget.dart';

import '../milestone/milestone_detail_pending_screen2.dart';


class MilestoneListScreen extends StatefulWidget {
  const MilestoneListScreen({Key? key}) : super(key: key);

  @override
  State<MilestoneListScreen> createState() => _MilestoneListScreenState();
}

class _MilestoneListScreenState extends State<MilestoneListScreen> {
  void _navigateToMilestoneDetailScreen() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => MilestoneDetailPendingScreen(), // Navigate to MilestoneDetailPendingScreen
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ModuleDetailsPrndingScreen(),
                      ),
                    );
                  },
                  child: CustomRowWidget(labelText: 'Milestones',)),
              const SizedBox(height: 40,),
              GestureDetector(
                onTap: _navigateToMilestoneDetailScreen, // Call the navigation function on tap
                child: const SegmentedControlMilestoneList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
