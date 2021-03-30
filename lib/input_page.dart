import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'IconContent.dart';

enum Gender{
  male,
  female
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}
const int activeCardColor=0xff1d1e33;
const int inActiveCardColor=0xff111328;

class _InputPageState extends State<InputPage> {
  int maleCardColor=inActiveCardColor;
  int femaleCardColor=inActiveCardColor;



  updateColor(Gender selectedGender)
  {
    if(selectedGender==Gender.male)// male clicked
      {
        if(maleCardColor==inActiveCardColor)
          {
            maleCardColor=activeCardColor;
            femaleCardColor=inActiveCardColor;
          }
        else{
          maleCardColor=inActiveCardColor;
       //   femaleCardColor=activeCardColor;
        }

    }
    else if(selectedGender==Gender.female)// female clicked
        {
      if(femaleCardColor==inActiveCardColor)
      {
        femaleCardColor=activeCardColor;
        maleCardColor=inActiveCardColor;
      }
      else{
        femaleCardColor=inActiveCardColor;
      //  maleCardColor=activeCardColor;
      }

    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR')
          ,centerTitle: true,
        ),
        body: Center(
            child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        print("male clicked");
                        setState(() {
                          updateColor(Gender.male);
                        });
                      },
                      child: ReusableCard(color:Color(maleCardColor),
                      child: IconContent(title:"MALE",
                      iconData: FontAwesomeIcons.mars,)),
                    )
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        print("female clicked");
                        setState(() {
                          updateColor(Gender.female);
                        });
                      },
                      child: ReusableCard(color:Color(femaleCardColor),
                      child:IconContent(title:"FEMALE",
                        iconData:FontAwesomeIcons.venus
                      )),
                    )
                    ),

                ],
              ),
            ),
            Expanded(
              child: ReusableCard(color:Color(activeCardColor),
              child:Icon(Icons.phone)),

            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(color:Color(activeCardColor))
                    ,
                  ),
                  Expanded(
                    child: ReusableCard(color:Color(activeCardColor))
                  ),
                ],
              ),
            ),
            Container(color:Color(0xffeb1555),
            height: 80.0,
                width: double.infinity,
            margin: EdgeInsets.only(top:10.0,))
          ],
              crossAxisAlignment: CrossAxisAlignment.stretch,
        )


        ));
  }
}
