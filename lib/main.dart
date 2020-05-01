import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'AppList.dart';
import 'package:flutter/rendering.dart';
import 'package:summertask1/ToggleButton.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                height: 125,
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.black,
                            width: 2,
                            style: BorderStyle.solid,
                          ),
                        ),
                        height: 48,
                        width: 48,
                        child: Icon(Icons.arrow_back_ios),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 60),
                      child: Text(
                        'Privacy',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: AppList().title.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: 85,
                        child: ListTile(
                          title: Text(
                            AppList().title[index],
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 21,
                              color: Colors.black,
                            ),
                          ),
                          subtitle: Text(
                            AppList().subtitle[index],
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Montserrats',
                            ),
                          ),
                          trailing: ToggleButton(),
                        ),
                      );
                    }),
              ),
              Container(
                height: 70,
                width: 335,
                child: RaisedButton(
                  color: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  highlightElevation: 50,
                  onPressed: null,
                  child: Text(
                    'Save',
                    style: TextStyle(
                      fontFamily: 'Montserrats',
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5),
            ],
          ),
        ),
      ),
    );
  }
}
