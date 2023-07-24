import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const DiceApp());
}

class DiceApp extends StatelessWidget
{
  const DiceApp({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp
    (
      home : FirstPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

  class FirstPage extends StatefulWidget
  {
  const FirstPage({Key? key}) : super(key:key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int randomNumber =2;
  Random random = new Random();
  var leftDiceNumberr;
  var rightDiceNumberr;
  void lDiceNumber()
  {
    randomNumber = random.nextInt(6) + 1;
    leftDiceNumberr = randomNumber.toString();
    print(leftDiceNumberr);
  }
  void rDiceNumber()
  {
    randomNumber = random.nextInt(6) + 1;
    rightDiceNumberr = randomNumber.toString();
    print(rightDiceNumberr);
  }


  @override
  Widget build(BuildContext context)
  {
    return Scaffold
    (
      appBar: AppBar
      (
        backgroundColor: Colors.red,
        title: Text('Dice App'),
      ),
      backgroundColor: Colors.red,
      body:Center
        (
        child:Row(


        children:
        [
            Expanded(

                child: GestureDetector
                  (
                    onTap:()
                    {
                      setState(() {
                        lDiceNumber();
                      });
                    },
                    child: Image.asset
                      (
                        'assets/dice$leftDiceNumberr.png',scale:2.5
                    ))),



            SizedBox(width: 50),


            Expanded(
                child: GestureDetector
                  (onTap: ()
                    {
                      setState(() {
                        rDiceNumber();
                      });
                    },
                    child: Image.asset
                  (
                    'assets/dice$rightDiceNumberr.png',scale:2.5
                )))
        ]
        ),
      ),
    );
  }
}
   


