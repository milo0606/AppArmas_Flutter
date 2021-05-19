import 'dart:ui';
import 'package:flutter/cupertino.dart';

import 'DatosPage.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _formkey = GlobalKey<FormState>();
   int Id = 40213658772;
   int serie = 123456;
   
  

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Builder(
        builder:  (context) =>
      Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          padding: EdgeInsets.only(top: 40),
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Column(
                  children: <Widget>[
                    /*Container con el logo*/
                    Container(
                      width: 200,
                      child: Image(
                        image: AssetImage("Imgs/logoMip1.jpg"),
                      ),
                    ),
                    /*texto Titulo*/

                    Container(
                      padding: EdgeInsets.only(left: 35, right: 35),
                      child: Text(
                        "Consultas de armas de fuego",
                        style: new TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Quicksand',
                          fontSize: 40,
                          color: Color(0xFF35424a),
                        ),
                      ),
                    ),
                    /*Cedula o rnc*/
                    Form(
                      key: _formkey,
                      child: Column(
                        children: <Widget>[
                          /*Campo Para Cedula o RNC*/
                          Container(
                            margin: EdgeInsets.only(top: 45),
                            padding: EdgeInsets.only(left: 20, right: 20),
                            child: TextFormField(
                              textInputAction: TextInputAction.next,
                              keyboardType: TextInputType.number,
                              validator: (String value) {
                                if (value.isEmpty) {
                                  return "Campo Requerido";
                                }
                                if (value.length < 11 && value.length > 11) {
                                  return "Debe de tener 11 digitos";
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                labelText: "Cedula o Rnc",
                                hintText: "Cedula o Rnc",
                                prefixIcon: Icon(Icons.credit_card_outlined),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                  Radius.circular(5),
                                )),
                                labelStyle: TextStyle(
                                    fontSize: 25,
                                    color: Colors.black87,
                                    fontFamily: 'Quicksand',
                                    fontWeight: FontWeight.normal),
                              ),
                              obscureText: false,
                              showCursor: false,
                              maxLines: 1,
                            ),
                          ),
                          /*Campo Para Serie del arma */
                          Container(
                            margin: EdgeInsets.only(top: 35),
                            padding: EdgeInsets.only(left: 20, right: 20),
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              textInputAction: TextInputAction.next,
                              validator: (String value) {
                                if (value.isEmpty) {
                                  return "Campo Requetido";
                                }
                                if (value.length < 5 && value.length > 5 ) {
                                  return "Debe de tener 5 digitos";
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                labelText: "Serie del arma",
                                hintText: "Serie el arma",
                                prefixIcon: Icon(Icons.qr_code),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                  Radius.circular(5),
                                )),
                                labelStyle: TextStyle(
                                    fontSize: 25,
                                    color: Colors.black87,
                                    fontFamily: 'Quicksand',
                                    fontWeight: FontWeight.normal),
                              ),
                              obscureText: false,
                              showCursor: false,
                              maxLines: 1,
                            ),
                          ),
                          Column(
                            children: [
                              SizedBox(
                                width: 300,
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 50),
                                child: Center(
                                  child: RaisedButton(

                                    padding: EdgeInsets.symmetric(
                                      vertical: 20,
                                      horizontal: 142,
                                    ),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(4))),
                                    child: Text(
                                      "Continuar",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Quicksand',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),

                                    ),
                                    onPressed: () {

                                      setState(() {
                                        if(_formkey.currentState.validate()){

                                        }
                                        if(
                                        _formkey.currentState.validate()){
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>DatosPage()));
                                      }});


                                      },
                                    color: Colors.blue,
                                  ),
                                ),
                              ),

                              Container(
                                margin: EdgeInsets.only(top: 80, left: 20),
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  "* Campos Requeridos *",
                                  style: TextStyle(
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      ),
    );
  }
}
