import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import 'ThankYouPage.dart';

void main() => runApp(MaterialApp(
      title: "My calculator",
      theme: ThemeData(primaryColor: Colors.purpleAccent),
      home: AAPCalculator(),
    ));

class AAPCalculator extends StatefulWidget {
  @override
  _AAPCalculatorState createState() => _AAPCalculatorState();
}

class _AAPCalculatorState extends State<AAPCalculator> {
  var _opperation = [
    'Add',
    'Sub',
    'Mul',
    'Div',
  ];
  var _values = "Add";
  var _displayText = " ";

  TextEditingController textBox1 = TextEditingController();
  TextEditingController textBox2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    TextStyle textStyle = Theme.of(context).textTheme.title;
    return Scaffold(
        appBar: AppBar(
          title: Text('AAPCalculator'),
        ),
        body: Container(
          padding: EdgeInsets.all(6),
          child: ListView(children: <Widget>[
            //first text
            DropdownButton<String>(
              value: _values,
              style: TextStyle(color: Colors.black.withOpacity(0.6)),
              items: _opperation.map((String value) {
                return DropdownMenuItem<String>(
                    value: value, child: Text(value));
              }).toList(),
              onChanged: (value) {
                setState(() {
                  _values = value;
                  print("value change to $value");
                });
                value = _values;
              },
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 7),
            ),
            //second text
            TextField(

              controller: textBox1,
              keyboardType: TextInputType.number,
              style: TextStyle(color: Colors.black.withOpacity(0.6)),
              decoration: InputDecoration(
                  labelText: "First Number",
                  hintText: "100",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6.0),
                  )),
            ),
            //third text
            TextField(
              controller: textBox2,
              keyboardType: TextInputType.number,
              style: TextStyle(color: Colors.black.withOpacity(0.6)),
              decoration: InputDecoration(
                  labelText: "second Number",
                  hintText: "100",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6.0),
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 5),
            ),
            //forth
            Text(
              _displayText,
              style: TextStyle(fontSize: 25.0),
            ),
            //fifth
            Row(
              children: <Widget>[
                Expanded(
                  child: RaisedButton(
                      child: Text(
                        'Calculate',
                        style: TextStyle(color: Colors.purple, fontSize: 20.0),
                      ),
                      onPressed: () {
                        setState(() {
                          double first = double.parse(textBox1.text);
                          double second = double.parse(textBox2.text);
                          switch (_values) {
                            case "Add":
                              var sum = first+second;
                              _displayText =
                                  "The result is "
                                      + sum.toStringAsFixed(0);
                              break;
                            case "Sub":
                              var sub = first-second;
                              _displayText =
                                  "The result is  "
                                      + sub.toStringAsFixed(0);
                              break;
                            case "Mul":
                              var mul = first*second;
                              _displayText =
                                  "The result is  "
                                      + mul.toStringAsFixed(0);
                              break;
                            case "Div":
                              var div = first/second;
                              _displayText =
                                  "The result  is "
                                      + div.toStringAsFixed(0);
                              break;

                            default:
                              _displayText = " Sorry! something went wrong.";
                          }
                        });
                      }),
                ),
                Expanded(
                    child: RaisedButton(
                       child: Text(
                    'Clear',
                    style:
                    TextStyle(color: Colors.purple, fontSize: 20.0),
                  ),
                  onPressed: () {
                    setState(() {
                      _clearAll();
                    });
                  },
                ))
              ],
            ),
            Row(children: <Widget>[
              Expanded(
                child: RaisedButton(
                    child: Text(
                        'Back To Home'),
                    color: Theme.of(context).primaryColor,
                    textColor: Colors.white,
                    onPressed: () => Navigator.pop(context)),
              ),
              Expanded(
                  child: RaisedButton(
                      child: Text(
                          'About us'),
                      color: Theme.of(context).primaryColor,
                      textColor: Colors.white,
                      onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) => ThankYou()),
                          ))),
            ]),

            Row(
              children: <Widget>[
                Expanded(
                  child:
                  RaisedButton(
                    onPressed: () {  },
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          Text(
                            'Make little things count!',
                            style: textStyle,
                          ),
                          Padding(
                              padding: EdgeInsets.all(20.0),

                                child: Icon(Icons.calculate_rounded,
                                  size: 80.0, color: Colors.purple)),
                          ],
                      ),
                    ),
                  ),
                )
              ],
            )
          ]),
        ));
  }

  void _clearAll() {

    textBox1.text = "";
    textBox2.text = "";
  }

}
