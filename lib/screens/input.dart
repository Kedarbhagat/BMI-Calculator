import 'package:bmi_calculator/screens/result_page.dart';
import 'package:bmi_calculator/components/roundbutton.dart';
import 'package:bmi_calculator/components/bottombutton.dart';
import '../constants.dart';
import '../components/resuable_code.dart';
import 'package:bmi_calculator/components/icon_content.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/calculator_brain.dart';

enum Gender { male, female, test }

Gender selectedGender = Gender.test;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  int age = 18 ;
  int height = 180;
  int weight = 80;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: resuableCode(
                      onpress: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      colour: selectedGender == Gender.male
                          ? kActiveCardColour
                          : kInactiveCardColour,
                      cardchild: IconColumn(
                        Icon(
                          FontAwesomeIcons.mars,
                          size: 80.0,
                        ),
                        "MALE",
                      )),
                ),
                Expanded(
                  child: resuableCode(
                    onpress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    colour: selectedGender == Gender.female
                        ? kActiveCardColour
                        : kInactiveCardColour,
                    cardchild: IconColumn(
                        Icon(
                          FontAwesomeIcons.venus,
                          size: 80.0,
                        ),
                        "FEMALE"),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: resuableCode(
                onpress: () {
                  setState(() {
                    selectedGender = Gender.male;
                  });
                },
                colour: kActiveCardColour,
                cardchild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("HEIGHT", style: klabelTextStyle),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(height.toString(), style: ksliderTextStyle),
                          Text("cm"),
                        ],
                      ),
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        overlayColor: Color(0x29EB1555),
                        thumbColor: Color(0xFFEB1555),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30),
                      ),
                      child: Slider(
                          value: height.toDouble(),
                          min: 120,
                          max: 220,
                          inactiveColor: Color(0xFF8D8E98),
                          onChanged: (double newValue) {
                            setState(() {
                              height = newValue.round();
                            });
                          }),
                    )
                  ],
                )),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: resuableCode(
                      onpress: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      colour: kActiveCardColour,
                      cardchild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "WEIGHT",
                            style: klabelTextStyle,
                          ),
                          Text(
                            weight.toString(),
                            style: ksliderTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                             roundIconButton( icon: FontAwesomeIcons.minus,
                             onPressed: (){
                               setState(() {
                                 weight-- ;
                               });
                             },) ,
                              SizedBox(width: 10,) ,
                              roundIconButton(icon: FontAwesomeIcons.plus ,
                              onPressed: (){
                                setState(() {
                                  weight++;
                                });
                              },),
                          ])
                        ],
                      )),
                ),
                Expanded(
                  child: resuableCode(
                    onpress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    colour: kActiveCardColour,
                    cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("AGE", style: klabelTextStyle,) ,
                        Text()
                        Text(age.toString(), style: ksliderTextStyle,) ,
                        Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            roundIconButton( icon: FontAwesomeIcons.minus,
                              onPressed: (){
                                setState(() {
                                  age-- ;
                                });
                              },) ,
                            SizedBox(width: 10,) ,
                            roundIconButton(icon: FontAwesomeIcons.plus ,
                              onPressed: (){
                                setState(() {
                                  age++;
                                });
                              },),
                          ],
                        )
                      ],
                    )
                  ),
                ),
              ],
            ),
          ),
          bottombutton(buttontitle: "Calculate", onTap: (){

          setState(() {
            CalculatorBrain clc = CalculatorBrain(weight: weight ,height: height) ;
            Navigator.push(context, MaterialPageRoute(builder: (context){return Resultpage(
              bmiResult: clc.CalculateBMI(),
              bmiText: clc.GetResults() ,
              Interpretion: clc.Interpretation()  ,
            ) ;},),) ;
          });
          },),
        ],
      ),
    );
  }
}

