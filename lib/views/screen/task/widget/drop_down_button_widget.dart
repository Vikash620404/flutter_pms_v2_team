import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

import '../../../widgets/global_app_color_widget.dart';


class CustomItem {
  final String text;

  CustomItem({
    required this.text,
  });
}

class MyDropDownButton extends StatefulWidget {
  const MyDropDownButton({super.key});

  @override
  State<MyDropDownButton> createState() => _MyDropDownButtonState();
}

class _MyDropDownButtonState extends State<MyDropDownButton> {
  CustomItem? _selectedItem;

  final List<CustomItem> _items = [
    CustomItem(
      text: 'Vikram jha',
    ),
    CustomItem(
      text: 'Vikram jha',
    ),
    CustomItem(
      text: 'Vikram jha',
    ),
  ];

  @override
  void initState() {
    _selectedItem = _items[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton2<CustomItem>(
      dropdownStyleData: DropdownStyleData(
          decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10))),

      buttonStyleData: ButtonStyleData(
        decoration: BoxDecoration(
            color: whiteColor,
            border: Border.all(color: containerBorderColor),
            borderRadius: BorderRadius.circular(10)),
        padding: const EdgeInsets.symmetric(horizontal: 16),

        height: 48,
        width: double.infinity,
      ),
      underline: const SizedBox(),
      value: _selectedItem,
      onChanged: (CustomItem? newValue) {
        setState(() {
          _selectedItem = newValue;
        });
      },
      items: _items.map<DropdownMenuItem<CustomItem>>((CustomItem item) {
        return DropdownMenuItem(
          value: item,
          child: Text(item.text),
        );
      }).toList(),
    );
  }
}
