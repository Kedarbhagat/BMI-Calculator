import 'package:flutter/material.dart';
import '../constants.dart';
class bottombutton extends StatelessWidget {
  bottombutton({required this.onTap ,required this.buttontitle}) ;
  final VoidCallback onTap ;
  final String buttontitle ;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ,
      child: Container(
        padding: EdgeInsets.only(bottom: 20),
        color: kBottomContainerColor,
        height: kBottomContainerHeight,
        width: double.infinity,
        child: Center(child: Text(buttontitle  ,style: kLargeButtonTextStyle,)) ,
      ),
    );
  }
}