import 'package:flutter/material.dart';



class BottomButton extends StatefulWidget {
  final String text1;

  const BottomButton({
    Key? key,
    required this.text1,
  }) : super(key: key);

  @override
  State<BottomButton> createState() => _BottomButtonState();
}

class _BottomButtonState extends State<BottomButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade300,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          height: 35,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: const Color.fromARGB(255, 196, 196, 196)),
          child: Center(
            child: Text(
              widget.text1,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}