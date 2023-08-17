import 'package:flutter/material.dart';
import 'package:flutter_rounded_date_picker/flutter_rounded_date_picker.dart';
import 'package:intl/intl.dart';

import '../../../widgets/global_app_color_widget.dart';


class TDatePicker extends StatefulWidget {
  const TDatePicker({Key? key}) : super(key: key);

  @override
  TDatePickerState createState() => TDatePickerState();
}

class TDatePickerState extends State<TDatePicker> {
  DateTime selectedDate = DateTime.now();
  int minYear = DateTime.now().year -
      100; // Change this to set the minimum selectable year
  int maxYear = DateTime.now().year +
      100; // Change this to set the maximum selectable year

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showRoundedDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(minYear),
      lastDate: DateTime(maxYear),
      borderRadius: 16,
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  String formatDate(DateTime date) {
    final String month = DateFormat.MMMM()
        .format(date); // Use DateFormat to get the month string
    String day = date.day.toString();
    String year = date.year.toString();

    final int dayValue = date.day;
    final String daySuffix = dayValue >= 11 && dayValue <= 13
        ? "th"
        : (dayValue % 10 == 1 ? "st" : (dayValue % 10 == 2 ? "nd" : "th"));

    return "$month $day$daySuffix $year";
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: const BorderSide(color: listTileBorderColor),
      ),
      title: Text(
        formatDate(selectedDate),
        style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400,color: subTitleTextColor),
      ),
      trailing: IconButton(
        onPressed: () => _selectDate(context),
        icon: Image.asset('assets/images/calendar.png'),
      ),
    );
  }
}
