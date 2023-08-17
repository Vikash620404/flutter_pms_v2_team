import 'package:flutter/material.dart';
import 'package:flutter_pms_v2_team/views/screen/task/widget/banner_widget.dart';
import 'package:flutter_pms_v2_team/views/screen/task/widget/sms_text_field_widget.dart';
import 'package:flutter_pms_v2_team/views/screen/task/widget/suggesation_card_widget.dart';

import '../../widgets/global_app_color_widget.dart';


class SuggestionsScreen extends StatefulWidget {
  const SuggestionsScreen({Key? key}) : super(key: key);

  @override
  State<SuggestionsScreen> createState() => _SuggestionsScreenState();
}

class _SuggestionsScreenState extends State<SuggestionsScreen> {
  bool? showList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const HeaderWidget(text1: 'Suggestions'),
                const SizedBox(
                  height: 40,
                ),
                showList != null
                    ? Column(
                  children: [
                    Image.asset('assets/images/Frame2.png'),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      "No suggestion yet!",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: subTitleTextColor),
                    ),
                  ],
                )
                    : ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return const SuggestionCard(
                        likeImage: 'assets/images/like.png',
                        feedBackText: 'Helpful',
                        suggestionImage1: 'assets/images/Photo.png',
                        suggestionImage2: 'assets/images/Photo.png',
                        suggestionText:
                        'Lorem ipsum dolor sit amet consectetur. Commodo varius iaculis in imperdiet faucibus pretium sem adipiscing, A.c enim netus dignissim enim diam Ridiculos Cras dolorurna hac- Vulputate ornare eu dolor erat in sitmorbi laoreet Lorem ipsum dolor sit amet\n\nconsectetur, Commodo varius iaculis in imperdiet faucibus pretium sem adipiscing. Ac enim netus dignissim enim diam ac ac- Ridiculus cras dolor urna hac- Vulputate ornare eu dolor erat in sit morbi laoreet.Lorem ipsum dolor sit amet consectetur. Commodo varius iaculis in\n\nimperdiet faucibus pretfum Sem adipiscing_ AC enim netus dignissim enim diam ac ac. Ridiculus cras dolor urna hat. Vulputate ornare eu dolor enat in Sit morbi laoreet.',
                        byText: 'By',
                        nameText: 'Vikram Jha',
                        postText: 'Aug 12 2023',
                      );
                    }),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const SMSSendTextField(text1: 'Add Suggestion'),
    );
  }
}
