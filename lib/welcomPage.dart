
import 'package:calculator_app/UnitConverter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './secondPage.dart';
import 'CurrencyConverter.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AAPCalculator',
      theme: ThemeData(backgroundColor: Colors.purple,
        primaryColor:
        Colors.purple,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'AAPCalculator & Converter',
            style: TextStyle(
                fontSize: 25.0),
          ),
        ),

        body: Center(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                decoration: BoxDecoration( color: Colors.black26,
                  border: Border.all(
                    width: 3,
                    color: Colors.purpleAccent,
                  ),),
                child: Text("WELCOME",
                style: TextStyle(fontSize: 20, fontFamily:'vtks_distress',
                    color: Colors.black),
                ),

              ),
            Container(
              decoration: BoxDecoration( color: Colors.black26,
                border: Border.all(
                  width: 7,
                  color: Colors.purpleAccent,
                ),),

              child:Image.network("https://th.bing.com/th/id/OIP.7udy4r-k9TSRRE0EuAJXAQHaHy?pid=Api&rs=1",
              width: 600,
              height: 300,),),

              Container(

                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 4,
                          color: Colors.purpleAccent,
                        ),),

                  child: RaisedButton(
                      child: Text(
                        'Calculator',
                        style: TextStyle(
                            fontSize: 20.0),
                      ),
                      textColor: Colors.white,
                      color: Colors.purple,
                      padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
                      onPressed: () =>
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  AAPCalculator(),
                            ),
                          ))
              ),


              Container(


                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 4,
                      color: Colors.purpleAccent,
                    ),),


                  margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: RaisedButton(
                      child: Text(
                        'Unit Converter',
                        style: TextStyle(
                            fontSize: 20.0),
                      ),
                      textColor: Colors.white,
                      color: Colors.purple,
                      padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
                      onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  UnitConverter(),
                            ),
                          ))
              ),

              Container(

                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 4,
                      color: Colors.purpleAccent,
                    ),),



                  child: RaisedButton(
                      child: Text(
                        'Currency Converter',
                        style: TextStyle(
                            fontSize: 20.0),
                      ),

                      textColor: Colors.white,
                      color: Colors.purple,
                      padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) =>
                              CureencyConverter (),
                        ),
                      ))),




          ]),
        ),
      ),
    );
  }
}
