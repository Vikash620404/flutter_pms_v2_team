import 'package:flutter/material.dart';
import 'package:flutter_pms_v2_team/views/screen/task/widget/top_up_menu_widget.dart';

import 'package:readmore/readmore.dart';

import '../../../widgets/global_app_color_widget.dart';
import 'my_separate_widget.dart';


class SuggestionCard extends StatefulWidget {
  final String? likeImage;
  final String? feedBackText;
  final String? suggestionImage1;
  final String? suggestionImage2;
  final String? suggestionText;
  final String? byText;
  final String? nameText;
  final String? postText;

  const SuggestionCard({
    Key? key,
    this.suggestionImage1,
    this.suggestionImage2,
    this.suggestionText,
    this.byText,
    this.nameText,
    this.postText,
    this.likeImage,
    this.feedBackText,
  }) : super(key: key);

  @override
  State<SuggestionCard> createState() => _SuggestionCardState();
}

class _SuggestionCardState extends State<SuggestionCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 30.0),
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: containerBorderColor),
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 35,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(color: containerBorderColor)),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 16.0),
                              child: Image.asset(widget.likeImage!),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 16.0),
                              child: Text(
                                widget.feedBackText!,
                                style: const TextStyle(
                                  color: subTitleTextColor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const TPopupMenu(),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: containerColor2),
                            child: Image.asset(widget.suggestionImage1!)),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: containerColor2,
                            ),
                            child: Image.asset(widget.suggestionImage2!)),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: ReadMoreText(
                      widget.suggestionText!,
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
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const MySeparator(),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: widget.byText!,
                              style: const TextStyle(
                                  color: titleTextColor,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14),
                            ),
                            const WidgetSpan(
                              child: SizedBox(width: 4),
                            ),
                            TextSpan(
                              text: widget.nameText!,
                              style: const TextStyle(
                                  color: subTitleTextColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            widget.postText!,
                            style: const TextStyle(
                              color: titleTextColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    )
    ;
  }
}