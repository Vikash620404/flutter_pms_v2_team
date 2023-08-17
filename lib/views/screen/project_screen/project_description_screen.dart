import 'package:flutter/material.dart';
import 'package:flutter_pms_v2_team/views/screen/project_screen/widget/project_screen_banner_widget.dart';



class DescriprionScreen extends StatefulWidget {
  const DescriprionScreen({super.key});

  @override
  State<DescriprionScreen> createState() => _DescriprionScreenState();
}

class _DescriprionScreenState extends State<DescriprionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            CustomRowWidget(labelText: "Project Description"),
            const Align(
              alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 20.0,top: 25),
                  child: Text('Project title',style: TextStyle(color: Color(0xFF595454)),),
                )),
            const Align(
              alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 20.0,top: 10),
                  child: Text('l-Service Project ',style: TextStyle(color: Color(0xFF595454),fontWeight: FontWeight.w500),),
                )),
            const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 20.0,top: 40),
                  child: Text('Description',style: TextStyle(color: Color(0xFF595454),fontWeight: FontWeight.w300),),
                )),
            const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 20.0,top: 10),
                  child: Text('Lorem ipsum dolor sit amet consectetur. Commodo varius iaculis in mperdiet faucibus pretium sem urna hac. Vulputate ornare eu dolor era urna hac. Vulputate ornare eu dolor era urna hac. Vulputate ornare eu dolor era urna hac. Vulputate ornare eu dolor era',style: TextStyle(color: Color(0xFF595454),fontWeight: FontWeight.w400),),
                ))
          ],
          ),
        ),
      ),

    );
  }


}
