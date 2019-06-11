import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Calc',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Calc'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String anser_value;
  String up_value;
  String hugou;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (hugou == null) {
      anser_value = "";
      up_value = "";
      hugou = "";
    }
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                padding: EdgeInsets.fromLTRB(0, 0, 30, 0),
                child: new Text(
                  up_value,
                  style: TextStyle(color: Colors.blueGrey, fontSize: 40),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                padding: EdgeInsets.fromLTRB(0, 0, 30, 0),
                child: new Text(
                  hugou,
                  style: TextStyle(color: Colors.blueGrey, fontSize: 40),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                padding: EdgeInsets.fromLTRB(0, 0, 30, 0),
                child: new Text(
                  anser_value,
                  style: TextStyle(color: Colors.blueGrey, fontSize: 40),
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    child: FlatButton(
                      onPressed: () {
                        setNumberPadClick(1);
                      },
                      child: Text(
                        "1",
                        style: TextStyle(color: Colors.blue, fontSize: 40),
                      ),
                    ),
                  ),
                ),
                Expanded(
                    child: Container(
                  child: FlatButton(
                    onPressed: () {
                      setNumberPadClick(2);
                    },
                    child: Text(
                      "2",
                      style: TextStyle(color: Colors.blue, fontSize: 40),
                    ),
                  ),
                )),
                Expanded(
                  child: Container(
                    child: FlatButton(
                      onPressed: () {
                        setNumberPadClick(3);
                      },
                      child: Text(
                        "3",
                        style: TextStyle(color: Colors.blue, fontSize: 40),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    child: FlatButton(
                      onPressed: () {
                        setNumberPadClick(4);
                      },
                      child: Text(
                        "4",
                        style: TextStyle(color: Colors.blue, fontSize: 40),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: FlatButton(
                      onPressed: () {
                        setNumberPadClick(5);
                      },
                      child: Text(
                        "5",
                        style: TextStyle(color: Colors.blue, fontSize: 40),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: FlatButton(
                      onPressed: () {
                        setNumberPadClick(6);
                      },
                      child: Text(
                        "6",
                        style: TextStyle(color: Colors.blue, fontSize: 40),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    child: FlatButton(
                      onPressed: () {
                        setNumberPadClick(7);
                      },
                      child: Text(
                        "7",
                        style: TextStyle(color: Colors.blue, fontSize: 40),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: FlatButton(
                      onPressed: () {
                        setNumberPadClick(8);
                      },
                      child: Text(
                        "8",
                        style: TextStyle(color: Colors.blue, fontSize: 40),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: FlatButton(
                      onPressed: () {
                        setNumberPadClick(9);
                      },
                      child: Text(
                        "9",
                        style: TextStyle(color: Colors.blue, fontSize: 40),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    child: FlatButton(
                      onPressed: () {
                        setNumberPadClick(0);
                      },
                      child: Text(
                        "0",
                        style: TextStyle(color: Colors.blue, fontSize: 40),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: FlatButton(
                      onPressed: () {
                        setAnser();
                      },
                      child: Text(
                        "=",
                        style: TextStyle(color: Colors.blue, fontSize: 40),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: FlatButton(
                      onPressed: null,
                      child: Text(
                        "<",
                        style: TextStyle(color: Colors.blue, fontSize: 40),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    child: FlatButton(
                      onPressed: () {
                        setHugou("+");
                      },
                      child: Text(
                        "+",
                        style: TextStyle(color: Colors.blue, fontSize: 40),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: FlatButton(
                      onPressed: () {
                        setHugou("-");
                      },
                      child: Text(
                        "-",
                        style: TextStyle(color: Colors.blue, fontSize: 40),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: FlatButton(
                      onPressed: () {
                        setHugou("*");
                      },
                      child: Text(
                        "*",
                        style: TextStyle(color: Colors.blue, fontSize: 40),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: FlatButton(
                      onPressed: () {
                        setHugou("/");
                      },
                      child: Text(
                        "/",
                        style: TextStyle(color: Colors.blue, fontSize: 40),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          clear();
        },
        tooltip: 'Increment',
        child: Icon(Icons.delete_outline),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  //0-9押したとき
  void setNumberPadClick(int number) {
    setState(() {
      anser_value = anser_value + number.toString();
    });
  }

  //符号セット
  void setHugou(String hugou) {
    setState(() {
      this.hugou = hugou;
      setControllKey();
    });
  }

  //えーしー
  void clear() {
    setState(() {
      up_value = "";
      anser_value = "";
      hugou = "";
    });
  }

  // + - * / を押したとき
  void setControllKey() {
    if (up_value == "") {
      //上の段に入れる
      up_value = anser_value;
      anser_value = "";
    } else {
      startCalc();
    }
  }

  //四則演算
  void startCalc() {
    setState(() {
      switch (hugou) {
        case "+":
          int anser_calc = int.parse(up_value) + int.parse(anser_value);
          up_value = anser_calc.toString();
          break;
        case "-":
          int anser_calc = int.parse(up_value) - int.parse(anser_value);
          up_value = anser_calc.toString();
          break;
        case "*":
          int anser_calc = int.parse(up_value) * int.parse(anser_value);
          up_value = anser_calc.toString();
          break;
        case "/":
          double anser_calc =
              double.parse(up_value) / double.parse(anser_value);
          up_value = anser_calc.toString();
          break;
      }
      anser_value = "";
    });
  }

  //答え
  void setAnser() {
    startCalc();
    setState(() {
      anser_value = up_value;
      hugou = "";
      up_value = "";
    });
  }
}