import 'package:flutter/material.dart';

import '../../../widgets/global_app_color_widget.dart';



class SMSSendTextField extends StatefulWidget {
  final String text1;

  const SMSSendTextField({
    Key? key,
    required this.text1,
  }) : super(key: key);

  @override
  State<SMSSendTextField> createState() => _SMSSendTextField();
}

class _SMSSendTextField extends State<SMSSendTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
      BoxDecoration(border: Border.all(color: containerBorderColor)),
      child: Padding(
        padding: const EdgeInsets.only(top: 16.0,bottom: 16),
        child: ListTile(

          title: TextField(
            cursorColor: segmentedBoxColor,
            decoration: InputDecoration(
              filled: true,
              fillColor: containerColor,
              icon: Image.asset(
                'assets/images/gallery-add.png',
              ),
              hintText: widget.text1,
              hintStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: titleTextColor),
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10)),

            ),
          ),
          trailing:  Image.asset('assets/images/send.png'),

        ),
      ),
    );
  }
}