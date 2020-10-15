import 'package:flutter/material.dart';
import 'package:share_your_park/syp.dart';

class Car extends StatefulWidget {
  @override
  _CarState createState() => _CarState();
}

class _CarState extends State<Car> {
  int dropDownValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: SingleChildScrollView(
                  child: Column(
            children: <Widget>[

              Stack(
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.only(right: 160, top: 40),
                      child: Text( 
                        "Quel est ta",
                        style: TextStyle(color: Colors.pink, fontSize: 28)
                        ),
                    ),Container(
                      margin: EdgeInsets.only(right: 160, top: 80),
                      child: Text(
                        "voiture?",
                        style: TextStyle(color: Colors.pink, fontSize: 28)
                        ),
                    ),
                ],
              ),
            
            Container(
                          margin: EdgeInsets.symmetric(vertical:5, horizontal: 50),
                          child:  TextField(
                        
                            obscureText: false,
                            decoration: InputDecoration(
                              //border: OutlineInputBorder(),
                              labelText: 'Type de véhicule',
                              labelStyle: TextStyle(color: Colors.pink[200]),
                            ),
                          ),
                        ),
            Container(
                          margin: EdgeInsets.symmetric(vertical:5, horizontal: 50),
                          child:  TextField(
                        
                            obscureText: false,
                            decoration: InputDecoration(
                              //border: OutlineInputBorder(),
                              labelText: 'Le modèle',
                              labelStyle: TextStyle(color: Colors.pink[200]),
                            ),
                          ),
                        ),
            Container(
                          margin: EdgeInsets.symmetric(vertical:5.0, horizontal: 50),
                          child:  TextField(
                        
                            obscureText: false,
                            decoration: InputDecoration(
                              //border: OutlineInputBorder(),
                              labelText: "Plaque d'immatriculation",
                              labelStyle: TextStyle(color: Colors.pink[200]),
                              
                            ),
                          ),
                        ), 
                     

             Container(
               width: 300,
               margin: EdgeInsets.symmetric(vertical:5.0, horizontal: 50),
               child: ButtonTheme(
                 
                 child: DropdownButton(
                 isExpanded: true,
          value: dropDownValue,
          onChanged: (int newVal){
            setState(() {
                dropDownValue = newVal;
            });
          },
          items: [
            DropdownMenuItem(
                value: 0,
                child: Text('Large', style: TextStyle(color: Colors.pink[200]),),
            ),
            DropdownMenuItem(
                value: 1,
                child: Text('Medium', style: TextStyle(color: Colors.pink[200]),),
            ),
            DropdownMenuItem(
                value: 2,
                child: Text('Small', style: TextStyle(color: Colors.pink[200]),),
            ),
            
          ],
      ),
               ),
               
             ),

             Container(
                 margin: EdgeInsets.only(left: 250, top: 20),
                   child: FloatingActionButton(
              mini: true,
              onPressed: (){
                Navigator.push(
                                        context, 
                                        MaterialPageRoute(
                                          builder:(BuildContext context){
                                            return Syp();
                                          }
                                        )
                                    );
              },
              child: Icon(Icons.keyboard_arrow_right, color: Colors.white),
              backgroundColor: Colors.pink,
              ),
               ),
            ],
          ),
        ),


      ),
    );
  }
}