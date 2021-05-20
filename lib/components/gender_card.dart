import 'package:flutter/material.dart';
import '../constants.dart';

class GenderCard extends StatelessWidget {
  GenderCard({this.gender, this.iconsa});
  final String gender;
  final IconData iconsa;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Icon(
            iconsa,
            size: 80,
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Center(
          child: Text(
            gender,
            style: kLabelTextStyle,
          ),
        ),
      ],
    );
  }
}
