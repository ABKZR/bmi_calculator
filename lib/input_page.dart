import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'gender_card.dart';
import 'reusable_card.dart';

const Activecolor = Color(0xFF1D1E33);
const InacticeColor = Color(0xFF111328);



class InputPage extends StatefulWidget {
  const InputPage({Key key}) : super(key: key);
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Color maleCardColor=InacticeColor;
  Color femaleCardColor=InacticeColor;
  void updateColor(int gender){
    if(gender ==1){
      if(maleCardColor == InacticeColor){
        maleCardColor=Activecolor;
        femaleCardColor=InacticeColor;
      }
      else{
        maleCardColor=InacticeColor;
      }

    }
    if(gender ==2){
      if(femaleCardColor == InacticeColor){
        femaleCardColor=Activecolor;
        maleCardColor=InacticeColor;
      }
      else{
        femaleCardColor=InacticeColor;
      }

    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "BMI Calculator",
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        updateColor(1);
                      });
                    },
                    child: ReusalbeCard(
                      color: maleCardColor,
                      cardChild: GenderCard(
                        gender: "MALE",
                        iconsa: FontAwesomeIcons.mars,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        updateColor(2);
                      });
                    },
                    child: ReusalbeCard(
                      cardChild: GenderCard(
                        gender: "FEMALE",
                        iconsa: FontAwesomeIcons.venus,
                      ),
                      color: femaleCardColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusalbeCard(
              color: Activecolor,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusalbeCard(
                    color: Activecolor,
                  ),
                ),
                Expanded(
                  child: ReusalbeCard(
                    color: Activecolor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            color: Color(0xFFEB1555),
            margin: EdgeInsets.only(top: 10.0),
            height: 80.0,
          ),
        ],
      ),
    );
  }
}
