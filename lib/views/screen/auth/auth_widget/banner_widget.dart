import 'package:flutter/material.dart';
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

          color:const Color(0xFFFFFFFF),
          child: Transform.scale(
            scale: 1.5,
              child: Image.asset('assets/images/aimerse_bannner.png')),

        ),
      ),

    );
  }
}
