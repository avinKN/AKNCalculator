import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThankYou extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Developers'),
        ),
        body: Column(
          children: [
            Container(

              decoration: BoxDecoration(
                border: Border.all(
                  width: 6,
                  color: Colors.purpleAccent,
                ),
              ),margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Image.network('https://thumbs.dreamstime.com/b/female-software-engineer-38405383.jpg',
              width: 400,
              height: 200,),
            ),
            Container(
              child: Text("Aveen Kakamen ,Payam Muhhamed ,Aya Abdullah",
              style: TextStyle(fontSize: 18, color: Colors.black87,
            )
              )),


            Container(
              margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
             child: Text("contact us",
             style: TextStyle(fontSize: 20, color: Colors.purple),

             ),
            ),Icon(Icons.call,
            size: 40.0, color: Colors.purple),

            Container(

              child: Text("Aveen.kakamen@tiu.edu.iq",
                style: TextStyle(fontSize: 20, color: Colors.black87),

              ),
            ),Icon(Icons.email,
                size: 40.0, color: Colors.purple),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 4,
                  color: Colors.purpleAccent,
                ),
              ),

            ),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Text(""
                  "AAP calculator is an calculator, Unit Converter and Currency Converter"
                  "we created this app as a group for Advanced Mobile Application"
                  "we are studying at Tishk International University.forth grade."
                  " the app is user friendly . hope you enjoy using it .",
                style: TextStyle(fontSize: 19,color:Colors.black ,),

              ),
            ),
           Container(
                  child: Icon(Icons.app_blocking,
                size: 40, color: Colors.purple)),
           ])

        );


}}