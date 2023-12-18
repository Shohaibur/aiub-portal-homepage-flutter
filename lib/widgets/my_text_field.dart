import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
   MyTextField({
    super.key, required this.mylabeltext,
  });
  final String mylabeltext;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      width: 250,
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: mylabeltext,
        ),
      ),
    );
  }
}
