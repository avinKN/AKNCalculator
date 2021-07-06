import 'package:calculator_app/ThankYouPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UnitConverter extends StatefulWidget {
  UnitConverter({Key key}) : super(key: key);
  @override
  _UnitConverterState createState() => _UnitConverterState();
}

class _UnitConverterState extends State<UnitConverter> {
  final _unitcontroller = TextEditingController();
  var _result = '';
  var _isKM= false;
  var _unitLabel= 'Convert from MM to KM';

  void _convertUnit(){
    if(_unitcontroller.text.isEmpty){
      return ;
    }
    setState(() {
      _result ='${int.parse(_unitcontroller.text) / 1000000}';
    });
  }

void swapUnities(){
    if(_isKM){
      setState(() {
         _unitLabel= 'Convert from MM to KM';
        _isKM=false;
      });
    }else{
      setState(() {
         _unitLabel= 'Convert from KM to MM';
        _isKM=true;
      });

    }
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Unit Converter'),
        ),
        body: SingleChildScrollView(
          child: Column(

              children:<Widget>[
                SizedBox(
                  height: 15.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                  Text(
                    _unitLabel,

                    style: TextStyle(fontSize: 20.0, color: Colors.purple),),
                  FlatButton.icon(onPressed:swapUnities
                      , icon:Icon(
                    Icons.swap_horizontal_circle_outlined,
                    color: Colors.purple,),
                      label: Text('Swap',
                      style: TextStyle(fontSize: 15.0,)
                        ,))

                ],),

                Padding(
                  padding: const EdgeInsets.all(15),
                  child: TextField(
                    maxLength: 18,
                    controller: _unitcontroller,
                    keyboardType: TextInputType.number,
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    decoration: InputDecoration(
                        labelText: "Enter a Number",
                        hintText: " Add the number you want to convert",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6.0),
                        )),
                    onSubmitted: (value){
                      _convertUnit();
                    },


                  ),
                ),
                RaisedButton(
                    child: Text('Convert',
                      style: TextStyle(fontSize: 20.0,color: Colors.white),),
                    color: Theme.of(context).primaryColor,
                    onPressed: _convertUnit,
                    ),

                RaisedButton(
                    child: Text('About us',
                    style: TextStyle(fontSize: 20.0,color: Colors.white),),
                    color: Theme.of(context).primaryColor,
                    onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => ThankYou()),
                        )),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children:<Widget>[
                    Text('Result: ',
                  style: TextStyle(fontSize: 20.0,color: Colors.purple),
                    ),

                    Text(_result,
                    style: TextStyle(fontSize: 20,
                        color: Colors.purple),
                    ),
                  ],
                ),

                FlatButton(

                  child: Text(
                    'Clear',
                    style: TextStyle(fontSize: 25, color: Colors.purple),
                  ),
                  onPressed: () {
                    setState(() {
                      _result = '';
                      _unitcontroller.text = '';
                    });
                  },
                ),
                Icon(Icons.ad_units_outlined,
                  size: 50.0, color: Colors.purple),
             ],
            ),
        ),
        );
  }
}
