
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_pms_v2_team/views/screen/1st_row_all_task/delete_task_dialogue_screen.dart';
import 'package:flutter_pms_v2_team/views/screen/1st_row_all_task/image_screen.dart';
import 'package:flutter_pms_v2_team/views/screen/1st_row_all_task/task_details_screen.dart';
import 'package:flutter_pms_v2_team/views/screen/auth/forgot_password0.2.dart';
import 'package:flutter_pms_v2_team/views/screen/auth/login_screen.dart';
import 'package:flutter_pms_v2_team/views/screen/auth/forgot_password_screen.dart';
import 'package:flutter_pms_v2_team/views/screen/auth/reset_password_screen.dart';
import 'package:flutter_pms_v2_team/views/screen/auth/id_verification_screen.dart';
import 'package:flutter_pms_v2_team/views/screen/frontHomeScreen/front_home_page.dart';
import 'package:flutter_pms_v2_team/views/screen/frontHomeScreen/widget/home2_container_widget.dart';
import 'package:flutter_pms_v2_team/views/screen/milestone/milestone_detail_pending_screen2.dart';
import 'package:flutter_pms_v2_team/views/screen/milestone/milestone_list_screen.dart';
import 'package:flutter_pms_v2_team/views/screen/module/milestone_list_screen.dart';
import 'package:flutter_pms_v2_team/views/screen/module/module_details_pending.dart';
import 'package:flutter_pms_v2_team/views/screen/profile_screen/team_member_details.dart';
import 'package:flutter_pms_v2_team/views/screen/select/select_milestone_screen.dart';
import 'package:flutter_pms_v2_team/views/screen/1st_row_all_task/create_task_screen.dart';
import 'package:flutter_pms_v2_team/views/screen/1st_row_all_task/edit_task_screen.dart';
import 'package:flutter_pms_v2_team/views/screen/task/problem_task_detail_screen.dart';
import 'package:flutter_pms_v2_team/views/screen/task/problem_task_list_screen.dart';
import 'package:flutter_pms_v2_team/views/screen/task/suggestaion_screen.dart';
import 'package:flutter_pms_v2_team/views/screen/task/task_assigned_list_screen.dart';
import 'package:flutter_pms_v2_team/views/screen/task/task_completed_list_screen.dart';
import 'package:flutter_pms_v2_team/views/screen/task/task_in-progress_list_screen.dart';
import 'package:flutter_pms_v2_team/views/screen/task/task_overdue_list_screen.dart';
import 'package:flutter_pms_v2_team/views/screen/version_detail_pending/screen/module_list_screen.dart';
import 'package:flutter_pms_v2_team/views/screen/version_detail_pending/screen/version_detail_pending_screen.dart';
import 'package:flutter_pms_v2_team/views/screen/project_screen/version_list_screen.dart';
import 'package:flutter_pms_v2_team/views/screen/select/select_module_screen.dart';
import 'package:flutter_pms_v2_team/views/screen/select/select_project_screen.dart';
import 'package:flutter_pms_v2_team/views/screen/select/select_version_screen.dart';
import 'package:flutter_pms_v2_team/views/screen/task/performance_screen.dart';
import 'package:flutter_pms_v2_team/views/screen/1st_row_all_task/add_problem_details_dialogue_screen.dart';
import 'package:flutter_pms_v2_team/views/screen/task/task_completed_details_screen.dart';
import 'package:flutter_pms_v2_team/views/screen/taskDetail/create_task_screen.dart';
import 'package:flutter_pms_v2_team/views/screen/profile_screen/development_team.dart';
import 'package:flutter_pms_v2_team/views/screen/profile_screen/edit_profile_screen.dart';
import 'package:flutter_pms_v2_team/views/screen/profile_screen/profile_screen1.dart';
import 'package:flutter_pms_v2_team/views/screen/profile_screen/team_role_page.dart';
import 'package:flutter_pms_v2_team/views/screen/project_screen/project_description_screen.dart';
import 'package:flutter_pms_v2_team/views/screen/project_screen/project_screen.dart';
import 'package:flutter_pms_v2_team/views/screen/project_screen/project_screen1.2.dart';
import 'package:flutter_pms_v2_team/views/screen/project_screen/project_details_pending_screen.dart';



import 'package:flutter_pms_v2_team/views/screen/1st_row_all_task/task_status_dialogue_screen.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: FrontHomePage(),

    );
  }
}