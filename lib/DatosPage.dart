import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

void main() => runApp(DatosPage());

class DatosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xff163e80)
      ),
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(

          centerTitle: true,
          title: Text('Detalles',style: TextStyle(fontFamily: "Quicksand",fontWeight: FontWeight.bold,fontSize: 23),),
         leading: IconButton(icon: Icon(Icons.arrow_back_ios,size: 25,color: Colors.white,),onPressed: (){Navigator.pop(context);},)


        ),
        body: ListView(
          children: [
            Container(
              height: 720,
              child:
              Center(
                  child: Stack(
                    children: <Widget>[
                      Center(
                        child: Container(
                        width: 300,
                          alignment: Alignment.topCenter,
                          margin: EdgeInsets.only(top: 1,),
                          child:
                          Image(image: AssetImage("Imgs/MIP.png"),),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 180),
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: TextFormField(
                          initialValue:"Emilio Jose De los santos Sanchez",
                          style: TextStyle(color: Colors.grey.shade600,fontSize: 18),
                          keyboardType: TextInputType.number,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xff163e80)),
                            ),
                            labelText: "Nombre del propietario",
                            prefixIcon: Icon(Icons.person_outline,color: Color(0xff163e80)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(5),
                                )),
                            labelStyle: TextStyle(
                                fontSize: 25,
                                color: Colors.black87,
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.bold),
                          ),
                          obscureText: false,
                          showCursor: false,
                          maxLines: 1,
                        ),
                      ),

                      Positioned(
                        top: 230,
                        right: 0,
                        left: 0,
                        child: Container(
                          margin: EdgeInsets.only(top: 40),
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: TextFormField(
                            initialValue:"emiliosanchez999@gmail.com",
                            style: TextStyle(color: Colors.grey.shade600,fontSize: 18),
                            keyboardType: TextInputType.number,
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xff163e80)),
                              ),
                              labelText: "Correo Electronico",
                              prefixIcon: Icon(Icons.alternate_email,color: Color(0xff163e80)),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5),
                                  )),
                              labelStyle: TextStyle(
                                  fontSize: 25,
                                  color: Colors.black87,
                                  fontFamily: 'Quicksand',
                                  fontWeight: FontWeight.bold),
                            ),
                            obscureText: false,
                            showCursor: false,
                            maxLines: 1,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 320,
                        right: MediaQuery.of(context).size.width * 0.45,
                        left: 0,
                        child: Container(
                          margin: EdgeInsets.only(top: 40),
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: TextFormField(
                            initialValue:"40213658772",
                            style: TextStyle(color: Colors.grey.shade600,fontSize: 18),
                            keyboardType: TextInputType.number,
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xff163e80)),
                              ),
                              labelText: "Cedula o Rnc",
                              prefixIcon: Icon(Icons.credit_card,color:Color(0xff163e80)),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5),
                                  )),
                              labelStyle: TextStyle(
                                  fontSize: 24,
                                  color: Colors.black87,
                                  fontFamily: 'Quicksand',
                                  fontWeight: FontWeight.bold),
                            ),
                            obscureText: false,
                            showCursor: false,
                            maxLines: 1,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 320,
                        right: 0,
                        left: MediaQuery.of(context).size.width * 0.51,
                        child: Container(
                          margin: EdgeInsets.only(top: 40),
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: TextFormField(

                            initialValue:"03100068",
                            style: TextStyle(color: Colors.grey.shade600,fontSize: 18),
                            keyboardType: TextInputType.number,
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xff163e80)),
                              ),
                              labelText: "Serie",
                              prefixIcon: Icon(Icons.qr_code_outlined,color: Color(0xff163e80)),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5),
                                  )),
                              labelStyle: TextStyle(
                                  fontSize: 25,
                                  color: Colors.black87,
                                  fontFamily: 'Quicksand',
                                  fontWeight: FontWeight.bold),
                            ),
                            obscureText: false,
                            showCursor: false,
                            maxLines: 1,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 408,
                        right: MediaQuery.of(context).size.width * 0.45,
                        left: 0,
                        child: Container(
                          margin: EdgeInsets.only(top: 40),
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: TextFormField(
                            initialValue:"Escopeta",
                            style: TextStyle(color: Colors.grey.shade600,fontSize: 18),
                            keyboardType: TextInputType.number,
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xff163e80)),
                              ),
                              labelText: "Tipo de Arma",
                              prefixIcon: Icon(Icons.warning_amber_outlined,color: Color(0xff163e80)),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5),
                                  )),
                              labelStyle: TextStyle(
                                  fontSize: 23.46,
                                  color: Colors.black87,
                                  fontFamily: 'Quicksand',
                                  fontWeight: FontWeight.bold),
                            ),
                            obscureText: false,
                            showCursor: false,
                            maxLines: 1,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 408,
                        right: 0,
                        left: MediaQuery.of(context).size.width * 0.51,
                        child: Container(
                          margin: EdgeInsets.only(top: 40),
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: TextFormField(
                            initialValue:"3,500",
                            style: TextStyle(color: Colors.grey.shade600,fontSize: 18),
                            keyboardType: TextInputType.number,
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color:Color(0xff163e80)),
                              ),
                              labelText: "Monto",
                              prefixIcon: Icon(Icons.monetization_on_outlined,color: Color(0xff163e80)),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5),
                                  )),
                              labelStyle: TextStyle(
                                  fontSize: 25,
                                  color: Colors.black87,
                                  fontFamily: 'Quicksand',
                                  fontWeight: FontWeight.bold),
                            ),
                            obscureText: false,
                            showCursor: false,
                            maxLines: 1,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 495,
                        right: 0,
                        left: 0,
                        child: Container(
                          margin: EdgeInsets.only(top: 40),
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child:
                          TextFormField(
                            initialValue:"Ninguna Observacion ",
                            style: TextStyle(color: Colors.grey.shade600,fontSize: 18),
                            keyboardType: TextInputType.number,
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(top: 90,bottom: 60),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xff163e80)),
                              ),
                              labelText: "Detalles",
                              prefixIcon: Icon(Icons.pending_actions,color:Color(0xff163e80)),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5),
                                  )),
                              labelStyle: TextStyle(
                                  fontSize: 25,
                                  color: Colors.black87,
                                  fontFamily: 'Quicksand',
                                  fontWeight: FontWeight.bold),
                            ),
                            obscureText: false,
                            showCursor: false,
                            maxLines: 1,
                          ),
                        ),
                      ),

                    ],

                  )

              ),
            )
          ],
        )
      ),
    );
  }
}