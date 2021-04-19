import 'package:flutter/material.dart';

class SingleTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(
        'Check one-liner',
        style:
        TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
      ),
      value: false,
      onChanged: (value) {},
    );
  }
}