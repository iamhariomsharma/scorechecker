import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  int scoreA = 0;
  int scoreB = 0;

  void addThreeA() {
    setState(() {
      scoreA = scoreA + 3;
    });
  }

  void addFourA() {
    setState(() {
      scoreA = scoreA + 4;
    });
  }

  void addSixA() {
    setState(() {
      scoreA = scoreA + 6;
    });
  }

  void addThreeB() {
    setState(() {
      scoreB = scoreB + 3;
    });
  }

  void addFourB() {
    setState(() {
      scoreB = scoreB + 4;
    });
  }

  void addSixB() {
    setState(() {
      scoreB = scoreB + 6;
    });
  }

  void resetCounter() {
    setState(() {
      scoreA = 0;
      scoreB = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Danve Score"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: const EdgeInsetsDirectional.fromSTEB(0, 24, 0, 10),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text(
                  "Team A",
                  style: new TextStyle(fontSize: 28.0),
                ),
                new Text(
                  "Team B",
                  style: new TextStyle(fontSize: 28.0),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 80),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new Text(
                  "$scoreA",
                  style: new TextStyle(fontSize: 28.0),
                ),
                new Text(
                  "$scoreB",
                  style: new TextStyle(fontSize: 28.0),
                ),
              ],
            ),
          ),
          new Container(
            margin: const EdgeInsets.all(10.0),
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    new MaterialButton(
                      minWidth: 120.0,
                      height: 50.0,
                      child: new Text(
                        "+3",
                        style: new TextStyle(fontSize: 18.0),
                      ),
                      color: Colors.redAccent,
                      splashColor: Colors.yellowAccent,
                      textColor: Colors.white,
                      onPressed: addThreeA,
                    ),
                    new MaterialButton(
                      minWidth: 120.0,
                      height: 50.0,
                      child: new Text(
                        "+3",
                        style: new TextStyle(fontSize: 18.0),
                      ),
                      color: Colors.redAccent,
                      splashColor: Colors.yellowAccent,
                      textColor: Colors.white,
                      onPressed: addThreeB,
                    )
                  ],
                ),
                new Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    new MaterialButton(
                      minWidth: 120.0,
                      height: 50.0,
                      child: new Text(
                        "+4",
                        style: new TextStyle(fontSize: 18.0),
                      ),
                      color: Colors.redAccent,
                      splashColor: Colors.yellowAccent,
                      textColor: Colors.white,
                      onPressed: addFourA,
                    ),
                    new MaterialButton(
                      minWidth: 120.0,
                      height: 50.0,
                      child: new Text(
                        "+4",
                        style: new TextStyle(fontSize: 18.0),
                      ),
                      color: Colors.redAccent,
                      splashColor: Colors.yellowAccent,
                      textColor: Colors.white,
                      onPressed: addFourB,
                    )
                  ],
                ),
                new Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    new MaterialButton(
                      minWidth: 120.0,
                      height: 50.0,
                      child: new Text(
                        "+6",
                        style: new TextStyle(fontSize: 18.0),
                      ),
                      color: Colors.redAccent,
                      splashColor: Colors.yellowAccent,
                      textColor: Colors.white,
                      onPressed: addSixA,
                    ),
                    new MaterialButton(
                      minWidth: 120.0,
                      height: 50.0,
                      child: new Text(
                        "+6",
                        style: new TextStyle(fontSize: 18.0),
                      ),
                      color: Colors.redAccent,
                      splashColor: Colors.yellowAccent,
                      textColor: Colors.white,
                      onPressed: addSixB,
                    )
                  ],
                ),
                new Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new MaterialButton(
                      minWidth: 120.0,
                      height: 50.0,
                      child: new Text(
                        "RESET",
                        style: new TextStyle(fontSize: 14.0),
                      ),
                      color: Colors.yellow[500],
                      splashColor: Colors.redAccent,
                      textColor: Colors.black,
                      onPressed: resetCounter,
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
