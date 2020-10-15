import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       
       body: Container(

         child: SingleChildScrollView(
                    child: Column(
             children: <Widget> [

                Stack(
                 children: <Widget> [
                    Container(
                      margin: EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 0.0),
                      child: Text(
                        "Quel est ton",
                        style: TextStyle(color: Colors.pink, fontSize: 28)
                        ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0.0, 60.0, 0.0, 0.0),
                      child: Text(
                        "prénom?",
                        style: TextStyle(color: Colors.pink, fontSize: 28)
                        ),
                    ),
                  ]
                ),

            Container(
                          margin: EdgeInsets.symmetric(vertical:30, horizontal: 50),
                          child:  TextField(
                        
                            obscureText: false,
                            decoration: InputDecoration(
                              //border: OutlineInputBorder(),
                              labelText: 'Nom',
                            ),
                          ),
                        ),
            Container(
                          margin: EdgeInsets.symmetric(vertical:5.0, horizontal: 50),
                          child:  TextField(
                        
                            obscureText: false,
                            decoration: InputDecoration(
                              //border: OutlineInputBorder(),
                              labelText: 'Prénom',
                              
                            ),
                          ),
                        ),
           
            
            Container(
              margin: EdgeInsets.only(left: 250, top: 20),
              child: Icon(Icons.keyboard_arrow_right, color: Colors.pink,)
            ),



             ],
           ),
         ),
       ),
    );
  }
  
}

 