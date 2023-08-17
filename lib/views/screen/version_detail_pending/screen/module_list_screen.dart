import 'package:flutter/material.dart';
import 'package:flutter_pms_v2_team/views/screen/module/module_details_pending.dart';
import 'package:flutter_pms_v2_team/views/screen/project_screen/widget/project_screen_banner_widget.dart';
import 'package:flutter_pms_v2_team/views/screen/project_screen/widget/segmented_control_versionlist_widget.dart';
import 'package:flutter_pms_v2_team/views/screen/version_detail_pending/screen/version_detail_pending_screen.dart';
import '../widget/segmented_control_button.dart';
 // Import the ModuleDetailPendingScreen

class ModuleListScreen extends StatefulWidget {
  const ModuleListScreen({Key? key}) : super(key: key);

  @override
  State<ModuleListScreen> createState() => _ModuleListScreenState();
}

class _ModuleListScreenState extends State<ModuleListScreen> {
  void _navigateToModuleDetailScreen() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const ModuleDetailsPrndingScreen(), // Navigate to ModuleDetailPendingScreen
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
                        builder: (context) => const VersionDetailPendingScreen(),
                      ),
                    );
                  },child: CustomRowWidget(labelText: 'Module',)),
              const SizedBox(height: 25,),
              GestureDetector(
                onTap: _navigateToModuleDetailScreen, // Call the navigation function on tap
                child: SegemntedControlModuleList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
