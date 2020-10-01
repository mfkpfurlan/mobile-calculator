import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String _output = "0";

  Widget buildButton(String buttonText) {
    return new Expanded (
        child: new OutlineButton(
        padding: new EdgeInsets.all(24),
        child: new Text(
          buttonText,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
        ),
        onPressed: () => {0},
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: new Container(
        
        child: new Column(children: <Widget>[

          new Container(

            alignment: Alignment.centerRight,

            padding: new EdgeInsets.symmetric(
              vertical: 24,
              horizontal: 12
            ),

            child: new Text(_output,
              style: new TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold
              ),
            )
          ),

          new Expanded(
            child: new Divider(),
          ),

          new Row(
            children: [
              buildButton("7"),
              buildButton("8"),
              buildButton("9"),
              buildButton("/")
            ]
          ),

          new Row(
            children: [
              buildButton("4"),
              buildButton("5"),
              buildButton("6"),
              buildButton("X")
            ]
          ),

          new Row(
            children: [
              buildButton("1"),
              buildButton("2"),
              buildButton("3"),
              buildButton("-")
            ]
          ),

          new Row(
            children: [
              buildButton("."),
              buildButton("0"),
              buildButton("00"),
              buildButton("+")
            ]
          ),

          new Row(
            children: [
              buildButton("CREAR"),
              buildButton("=")
            ]
          )

        ],)

      )
    );
  }
}
