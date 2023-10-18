import 'package:flutter/material.dart';
import '../constants.dart';
class IconColumn extends StatelessWidget {
  IconColumn(this.con , this.text) ;
  final Icon con ;
  final String text ;


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        con ,
        SizedBox(
          height: 15.0,
        ),
        Text(
          text,
          style: klabelTextStyle ,
        )
      ],
    );
  }
}
