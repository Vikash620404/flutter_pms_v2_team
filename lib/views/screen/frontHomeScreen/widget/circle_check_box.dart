import 'package:flutter/material.dart';
import 'package:flutter_pms_v2_team/views/widgets/const_color.dart';

class RoundedCheckboxButton extends StatefulWidget {
  const RoundedCheckboxButton({super.key});

  @override
  _RoundedCheckboxButtonState createState() => _RoundedCheckboxButtonState();
}

class _RoundedCheckboxButtonState extends State<RoundedCheckboxButton> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Container(
        height: 25,
        width: 25,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: selected ? AppColors.deepgreycolor: Colors.white,
            border: Border.all(width: 1, color: AppColors.deepgreycolor)),
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: selected
              ? const Icon(
            Icons.check,
            size: 18.0,
            color: AppColors.whitecolor,
          )
              : Container(),
        ),
      ),
    );
  }
}
