import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_pms_v2_team/views/screen/profile_screen/widget/pick_image_widget.dart';
import 'package:image_picker/image_picker.dart';





class ProfilePicture extends StatefulWidget {
  const ProfilePicture({Key? key}) : super(key: key);

  @override
  State<ProfilePicture> createState() => _ProfilePictureState();
}

class _ProfilePictureState extends State<ProfilePicture> {
  Uint8List? image;

  // method: pick image
  void selectImage() async {
    Uint8List? im = await pickImage(ImageSource.gallery);
    setState(() {
      image = im;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
              onTap: selectImage,
              child: SizedBox(
                height: 84,
                width: 84,
                child: image != null
                    ? ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.memory(image!),
                )
                    : ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b1/Grey_background.jpg/636px-Grey_background.jpg?20140113173544',
                    fit: BoxFit.cover,
                  ),
                ),
              )),
        ],
      ),
    );
  }
}