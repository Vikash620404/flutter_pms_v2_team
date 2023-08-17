import 'package:flutter/material.dart';

import 'const_color.dart';

class RadioButton extends StatefulWidget {
  const RadioButton({super.key});

  @override
  State<RadioButton> createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  int selectedRadio = 0;

  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

  Color getRadioColor(int radioValue) {
    return selectedRadio == radioValue ? AppColors.deepgreycolor : AppColors.bluegreycolor;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0,right: 20,top: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'In progress',
                style: TextStyle(color: AppColors.deepgreycolor),
              ),
              Radio(
                value: 1,
                groupValue: selectedRadio,
                onChanged: (val) {
                  setSelectedRadio(val!);
                },
                activeColor: getRadioColor(1),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0,right: 20,top: 10,bottom: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Completed',
                style: TextStyle(color: AppColors.deepgreycolor),
              ),
              Radio(
                value: 2,
                groupValue: selectedRadio,
                onChanged: (val) {
                  setSelectedRadio(val!);
                },
                activeColor: getRadioColor(2),
              ),
            ],

          ),
        ),
        const SizedBox(height: 60,)
      ],
    );
  }
}

