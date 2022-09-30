import 'package:flutter/material.dart';

void main() {
  runApp(const CalculatorApp());
}

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({Key? key}) : super(key: key);

  @override
  State<CalculatorApp> createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {

  var num1,num2;
  var answer;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Calculator App'),
          ),
          backgroundColor: Colors.blueGrey,
        ),
        body: Column(
          children: <Widget>[
            Text('Enter First Number',style: TextStyle(fontSize: 30),),
            TextField(onChanged: (value) => num1=double.parse(value),),
            Text('Enter Second Number',style: TextStyle(fontSize: 30),),
            TextField(onChanged: (value) => num2=double.parse(value),),
            Column(
              children: <Widget>[
                ElevatedButton(child: Text('+'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blueGrey,
                  ),
                  onPressed: (){
                    setState(() {
                      answer=num1+num2;
                    });
                  },),
                ElevatedButton(child: Text('-'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blueGrey,
                  ),
                  onPressed: (){
                    setState(() {
                      answer=num1-num2;
                    });
                  },),
                ElevatedButton(child: Text('*'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blueGrey,
                  ),
                  onPressed: (){
                    setState(() {
                      answer=num1*num2;
                    });
                  },),
                ElevatedButton(child: Text('/'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blueGrey,
                  ),
                  onPressed: (){
                    setState(() {
                      answer=num1/num2;
                    });
                  },),
              ],
            ),
            Text(answer.toString(),style: TextStyle(fontSize: 30),)
          ],
        ),
      ),
    );
  }
}
