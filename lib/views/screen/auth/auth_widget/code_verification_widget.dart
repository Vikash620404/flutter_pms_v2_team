import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VerificationBox extends StatefulWidget {
  final FocusNode focusNode;
  final FocusNode previousFocusNode;
  final FocusNode nextFocusNode;

  VerificationBox({
    required this.focusNode,
    required this.previousFocusNode,
    required this.nextFocusNode,
    required TextEditingController controller,
  });

  @override
  _VerificationBoxState createState() => _VerificationBoxState();
}

class _VerificationBoxState extends State<VerificationBox> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    _controller.addListener(_handleTextChanged);
  }

  void _handleTextChanged() {
    if (_controller.text.isEmpty) {
      widget.previousFocusNode.requestFocus();
    } else if (_controller.text.length == 1) {
      widget.nextFocusNode.requestFocus();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: TextField(
          controller: _controller,
          focusNode: widget.focusNode,
          keyboardType: TextInputType.number,
          maxLength: 1,
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            counterText: '', // Hide the character counter
            border: InputBorder.none,
          ),
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
