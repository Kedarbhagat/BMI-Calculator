import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import '../components/resuable_code.dart';
import '../components/resuable_code.dart';
import 'package:bmi_calculator/components/bottombutton.dart';
import 'input.dart';

class Resultpage extends StatelessWidget {
  Resultpage({required this.bmiResult ,required this.bmiText , required this.Interpretion}) ;
  final String bmiResult ;
  final String bmiText ;
  final String Interpretion ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              alignment:  Alignment.bottomLeft,
              child: Text(
                "your results",
                style: ktitleTextstyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: resuableCode(onpress: (){},

              colour: kActiveCardColour,
              cardchild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text( bmiText,style: kresultTextstlye) ,
                  Text(bmiResult ,style: kbmi,) ,
                  Text(Interpretion  ,style: kbody,
                  textAlign: TextAlign.center,) ,
                  Text()
                ],
              ),
            ),
          ),
          bottombutton(onTap:(){
            Navigator.pop(context) ;
          }, buttontitle: "RE-CALCULATE")
        ],
      ),
    );
  }
}
