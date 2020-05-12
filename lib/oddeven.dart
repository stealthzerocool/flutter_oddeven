import 'package:flutter/material.dart';

class Odevn extends StatefulWidget {
  @override
  _OdevnState createState() => _OdevnState();
}

class _OdevnState extends State<Odevn> {
  var result = "Result";

  TextEditingController num = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.all(20.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 30.0,
                    ),
                    TextField(
                      controller: num,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        hintText: "Enter NUmber",
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    FlatButton(
                      onPressed: () {
                        var nm = int.parse(num.text);

                        setState(() {
                          var mod = (nm % 2) as int;
                          if (mod == 0) {
                            setState(() {
                              result = "Even";
                            });
                          } else {
                            setState(() {
                              result = "Odd";
                            });
                          }

//                      result=sum;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.red,
                        ),
                        height: 50.0,
                        width: double.infinity,
                        child: Center(
                          child: Text("Check",
                              //textAlign:TextAlign.center
                              style: TextStyle(fontSize: 23.0)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    GestureDetector(
                      onTap: () {
                        // body: Regist();
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.blueAccent,
                        ),
                        height: 50.0,
                        width: double.infinity,
                        child: Center(
                          child: Text(result,
                              //textAlign:TextAlign.center
                              style: TextStyle(fontSize: 23.0)),
                        ),
                      ),
                    ),
                  ]),
            ),
          ),
        ));
  }
}
