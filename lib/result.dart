import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
//    String resultText;
//    if (resultScore <= 8) {
//      resultText = 'You are awesome and innocent!';
//    } else if (resultScore <= 12) {
//      resultText = 'Pretty likeable!';
//    } else if (resultScore <= 16) {
//      resultText = 'You are ... strange?!';
//    } else {
//      resultText = 'You are so bad!';
//    }
    return resultScore.toString();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Widget bigCircle = new Container(
      width: 300.0,
      height: 300.0,
      decoration: new BoxDecoration(
        color: Colors.orange,
        shape: BoxShape.circle,
      ),
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children:[
      Text("Your Score Is!",
        textAlign: TextAlign.center,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      Container(
        width: 150.0,
        height: 150.0,
        decoration: BoxDecoration(
            color: Colors.blue,
            shape: BoxShape.circle
        ),
        child: Text(
              resultPhrase,
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,

            ),
      ),
      FlatButton(onPressed: resetHandler,
        child: Text('Quiz Reset'),
        textColor: Colors.black,
      )
    ],

    );
  }
}
