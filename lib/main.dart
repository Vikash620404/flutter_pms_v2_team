
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import 'package:flutter_pms_v2_team/views/screen/auth/code_verification_screen.dart';
import 'package:flutter_pms_v2_team/views/screen/auth/login_screen.dart';
import 'package:flutter_pms_v2_team/views/screen/auth/password_recover_screen.dart';
import 'package:flutter_pms_v2_team/views/screen/auth/reset_password_screen.dart';
import 'package:flutter_pms_v2_team/views/screen/auth/verify_screen.dart';
import 'package:flutter_pms_v2_team/views/screen/completed_screen.dart';
import 'package:flutter_pms_v2_team/views/screen/design_screen.dart';
import 'package:flutter_pms_v2_team/views/screen/front_home_page.dart';
import 'package:flutter_pms_v2_team/views/screen/home_page2.dart';
import 'package:flutter_pms_v2_team/views/screen/inprogress_screen.dart';
import 'package:flutter_pms_v2_team/views/screen/review_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: InProgressScreen(),
    );
  }
}