import 'package:flutter/material.dart';

import '../../../widgets/global_app_color_widget.dart';




const List<Map<String, dynamic>> userProfileList = [
  {
    'image': 'assets/images/briefcase.png',
    'title': 'Role',
    'details': 'UI/UX Designer',
  },
  {
    'image': 'assets/images/sms.png',
    'title': 'Email ID',
    'details': 'Vikramjha@gmail.com',
  },
  {
    'image': 'assets/images/call.png',
    'title': 'Mobile Number',
    'details': '+91-8362741121',
  },
  {
    'image': 'assets/images/profile.png',
    'title': 'Gender',
    'details': 'Male',
  },
  {
    'image': 'assets/images/calendar.png',
    'title': 'Date of birth',
    'details': '28-07-1998',
  },
  {
    'image': 'assets/images/global.png',
    'title': 'Country',
    'details': 'Nigeria',
  },
];

class ProfileInfoCard extends StatelessWidget {
  const ProfileInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: ListView.builder(
        itemCount: userProfileList.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  color: containerColor,
                  borderRadius: BorderRadius.circular(8)),
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    Image.asset(
                      userProfileList[index]['image'],
                      scale: 1.3,
                    ),
                    const SizedBox(width: 8.0),
                    Expanded(
                      child: Text(
                        userProfileList[index]['title'],
                        style: const TextStyle(
                          color: titleTextColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        userProfileList[index]['details'],
                        style: const TextStyle(
                            color: blackColor,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                        overflow: TextOverflow.ellipsis,
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}