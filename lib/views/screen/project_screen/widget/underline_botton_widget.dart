import'package:flutter/material.dart';

import '../../../widgets/const_color.dart';
class UnderlineButton extends StatefulWidget {
  const UnderlineButton({super.key});

  @override
  State<UnderlineButton> createState() => _UnderlineButtonState();
}

class _UnderlineButtonState extends State<UnderlineButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      decoration: BoxDecoration(
        color: AppColors.whitecolor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.transparent), // Set border color to transparent
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              height: 50,
              child: DropdownButton(
                isExpanded: true,
                icon: const SizedBox.shrink(), // Remove the dropdown icon
                underline: Container(),
                items: const [


                ],
                onChanged: (value) {},
                hint: const Text(
                  'View All',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    )



    ;
  }
}
