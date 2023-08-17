import 'package:flutter/material.dart';
import 'package:flutter_pms_v2_team/views/widgets/const_color.dart';
class BannerWidget extends StatefulWidget {
  const BannerWidget({super.key});

  @override
  State<BannerWidget> createState() => _BannerWidgetState();
}

class _BannerWidgetState extends State<BannerWidget> {
  @override
  Widget build(BuildContext context) {
    return   Center(
      child: Padding(
        padding: const EdgeInsets.only(top:100.0),
        child: Container(

          color:AppColors.whitecolor,
          child: Transform.scale(
            scale: 1.4,
              child: Image.asset('assets/images/aimerse_bannner.png')),

        ),
      ),

    );
  }
}
