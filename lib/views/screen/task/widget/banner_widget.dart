import 'package:flutter/material.dart';

import '../problem_task_detail_screen.dart';


class HeaderWidget extends StatefulWidget {
  final String text1;

  const HeaderWidget({Key? key, required this.text1}) : super(key: key);

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 25,
          width: 25,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black26),
              borderRadius: BorderRadius.circular(5),
              color: Colors.white),
          child: Transform.scale(
              scale: 1, child: Image.asset("assets/images/back_icon.png")),
        ),
        Expanded(
          child: Text(
            widget.text1,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontSize: 17,
                color: Color(0xff595454),
                fontWeight: FontWeight.w700),
          ),
        ),
        const SizedBox(
          height: 25,
          width: 25,
        ),
      ],
    );
  }
}
