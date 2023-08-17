import 'package:flutter/material.dart';
import 'package:flutter_pms_v2_team/views/screen/project_screen/project_details_pending_screen.dart';
import 'package:flutter_pms_v2_team/views/screen/project_screen/widget/project_screen_banner_widget.dart';
import 'package:flutter_pms_v2_team/views/screen/project_screen/widget/segmented_control_versionlist_widget.dart';


import '../version_detail_pending/screen/version_detail_pending_screen.dart'; // Import the VersionDetailPendingScreen

class VersionListScreen extends StatefulWidget {
  const VersionListScreen({Key? key}) : super(key: key);

  @override
  State<VersionListScreen> createState() => _VersionListScreenState();
}

class _VersionListScreenState extends State<VersionListScreen> {
  void _navigateToVersionDetailScreen() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const VersionDetailPendingScreen(), // Navigate to VersionDetailPendingScreen
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
                        builder: (context) => const ProjectDetailPendingScreen(),
                      ),
                    );
                  },
                  child: CustomRowWidget(labelText: 'Versions',)),
              const SizedBox(height: 25,),
              GestureDetector(
                onTap: _navigateToVersionDetailScreen, // Call the navigation function on tap
                child: const SegemntedControlVersionList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
