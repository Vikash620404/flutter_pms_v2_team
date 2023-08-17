import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../project_details_pending_screen.dart';
import 'all_project_widget.dart';

List<Widget> buildContainerWidgets(BuildContext context) {
  return List.generate(4, (index) {
    return GestureDetector(
      onTap: () {
        _navigateToProjectDetail(context);
      },
      child: AllProjectContainerWidget(mode: (index % 4) + 1),
    );
  });
}

void _navigateToProjectDetail(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const ProjectDetailPendingScreen()),
  );
}
