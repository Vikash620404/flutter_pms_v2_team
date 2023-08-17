import 'package:flutter/material.dart';

import '../../../widgets/const_color.dart';

class SelectModuleContainerWidget extends StatefulWidget {
  @override
  _SelectModuleContainerWidgetState createState() => _SelectModuleContainerWidgetState();
}

class _SelectModuleContainerWidgetState extends State<SelectModuleContainerWidget> {
  String selectedName = 'Client Module';


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0,right: 20,top: 10),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color:AppColors.whitecolor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: AppColors.mediumgrey, width: 1),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                selectedName.isNotEmpty ? selectedName : 'Select Name',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color:AppColors.deepgreycolor,
                ),
              ),
            ),
            IconButton(
              onPressed: () {

              },
              icon: Icon(Icons.arrow_drop_down),
              color: AppColors.blackcolor,
            ),
          ],
        ),
      ),
    );
  }


}


