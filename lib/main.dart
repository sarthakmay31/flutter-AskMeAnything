import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Ask me Anything !!'),

          backgroundColor: Colors.blue,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}



class _DicePageState extends State<DicePage> {

  int decision=0;


  void returnRandom(){

    decision=Random().nextInt(3)+1;


  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                SizedBox(
                  height: 50,
                )
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Image.asset('images/image$decision.jpg'),
                ),
              ],
            ),
            Row(
            children: <Widget>[
              SizedBox(
                height: 100,
              )
            ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                    onPressed: (){
                      setState(() {
                        returnRandom();

                      });
                    },
                    child: Image.asset('images/click.JPG',
                    width: 250,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
  }


