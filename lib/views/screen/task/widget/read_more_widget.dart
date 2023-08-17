import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

import '../../../widgets/global_app_color_widget.dart';


class TReadMoreText extends StatefulWidget {
  final String readMoreText;
  const TReadMoreText({Key? key, required this.readMoreText}) : super(key: key);

  @override
  State<TReadMoreText> createState() => _TReadMoreTextState();
}

class _TReadMoreTextState extends State<TReadMoreText> {
  @override
  Widget build(BuildContext context) {
    return ReadMoreText(
      widget.readMoreText,
      style:
      const TextStyle(color: subTitleTextColor, fontSize: 16),
      trimLines: 2,
      trimMode: TrimMode.Line,
      trimCollapsedText: 'Read more',
      trimExpandedText: 'Read less',
      moreStyle: const TextStyle(
        fontSize: 16,
        color: Colors.black,
      ),
      colorClickableText: Colors.black,
    );
  }
}