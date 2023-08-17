import 'package:flutter/material.dart';
import 'package:flutter_pms_v2_team/views/screen/profile_screen/team_member_details.dart';
import 'package:flutter_pms_v2_team/views/screen/profile_screen/team_role_page.dart';
import 'package:flutter_pms_v2_team/views/screen/profile_screen/widget/custom_list_development_team.dart';
import 'package:flutter_pms_v2_team/views/screen/profile_screen/widget/develop_team_widget.dart';

import '../../widgets/const_color.dart';
import '../project_screen/widget/project_screen_banner_widget.dart';
class DevelopmentTeamScreen extends StatefulWidget {
  const DevelopmentTeamScreen({super.key});

  @override
  State<DevelopmentTeamScreen> createState() => _DevelopmentTeamScreenState();
}

class _DevelopmentTeamScreenState extends State<DevelopmentTeamScreen> {
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
                      MaterialPageRoute(builder: (context) => const TeamRolePage()),
                    );
                  },
                  child: CustomRowWidget(labelText: 'Development Team',)),
          SizedBox(
            height: 600,
            child: ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TeamMemberDetail(),
                      ),
                    );
                  },
                  child: CustomCard(
                    name: data[index]['name']!,
                    role: data[index]['role']!,
                  ),
                );
              },
            ),

          ),



            ],
          ),
        ),
      ),
    );
  }
}
