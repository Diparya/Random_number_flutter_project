import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.red,
          appBar: AppBar(
            title: Center(child: Text('Dicee')),
            backgroundColor: Colors.red,
          ),
          body: DicePage(),
        ),
      ),
    );


class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}
class _DicePageState extends State<DicePage> {
  void change(){
    setState(() {
      left=Random().nextInt(6)+1;
      right=Random().nextInt(6)+1;
      print(left);
    });
  }
  int left=1;
  int right=1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$left.png'),
              onPressed: () {
                change();

              },

            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$right.png'),
              onPressed: () {
                change();
              },
              
            ),
          ),
        ],
      ),
    );
  }
}

