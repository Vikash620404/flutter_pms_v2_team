import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../team_role_page.dart';

class ElevationButtonProfileInfo extends StatelessWidget {
  final String text1;

  const ElevationButtonProfileInfo({
    Key? key,
    required this.text1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => TeamRolePage(), // Replace with the actual path to TeamRolePage
          ),
        );
      },
      child: Container(
        color: Colors.grey.shade300,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            height: 35,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: const Color.fromARGB(255, 196, 196, 196),
            ),
            child: Center(
              child: Text(
                text1,
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
