import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../widgets/const_color.dart';
class DatePicker extends StatefulWidget {
  const DatePicker({super.key});

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  @override
  DateTime? selectedDate;
  Widget build(BuildContext context) {
    return    Padding(
      padding: const EdgeInsets.only(left: 20.0,right: 20),
      child: Container(
        width: double.infinity,
        height: 55,
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.mediumgrey),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [



            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: TextFormField(
                  readOnly: true,
                  decoration: InputDecoration(
                    hintText: 'Selected start Date', hintStyle: TextStyle(color: AppColors.deepgreycolor, fontSize: 16,fontWeight: FontWeight.w500),
                    border: InputBorder.none,
                  ),
                  controller: TextEditingController(
                    text: selectedDate != null
                        ? DateFormat('dd-MM-yyyy').format(selectedDate!)
                        : '', // Format the selected date or display an empty string
                  ),
                ),
              ),
            ),

            InkWell(
              onTap: () async {
                final pickedDate = await showDatePicker(
                  context: context,
                  initialDate: selectedDate ?? DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2101),
                );

                if (pickedDate != null) {
                  setState(() {
                    selectedDate = pickedDate;
                  });
                }
              },
              child: Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Image.asset('assets/images/calendar-2.png'),
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
