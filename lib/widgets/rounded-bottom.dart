import 'package:flutter/material.dart';
import 'package:myapp1/palatte.dart';

class RoundedBottom extends StatelessWidget {
  const RoundedBottom({
    required this.buttonText,
    Key? key,
  }) : super(key: key);

  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(16)),
      // ignore: deprecated_member_use
      child: FlatButton(
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Text(
            buttonText,
            style: kBodyText,
          ),
        ),
      ),
    );
  }
}
