import 'package:flutter/material.dart';
import 'package:share_your_park/adresse.dart';



class Name extends StatefulWidget {
  @override
  _NameState createState() => _NameState();
}

class _NameState extends State<Name>
    with SingleTickerProviderStateMixin {
  /*bool push = true;
  void change(bool ispushed){
    setState(() {
      push = ispushed;
    });
  }*/
  final data = MediaQuery.of;

  

 
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
                      margin: EdgeInsets.only(right: 160, top: 40),
                      child: Text(
                        "Quel est ton",
                        style: TextStyle(color: Colors.pink, fontSize: 28)
                        ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 160, top: 80),
                      child: Text(
                        "prénom?",
                        style: TextStyle(color: Colors.pink, fontSize: 28)
                        ),
                    ),
                  ]
                ),

            Container(
                          margin: EdgeInsets.symmetric(vertical:5, horizontal: 50),
                          child:  TextField(
                        
                            obscureText: false,
                            decoration: InputDecoration(
                              //border: OutlineInputBorder(),
                              labelText: 'Nom',
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
                              labelText: 'Prénom',
                              labelStyle: TextStyle(color: Colors.pink[200]),
                              
                            ),
                          ),
                        ),
           
            /*Container(
              margin: EdgeInsets.only(left: 300, top: 15),
              child: Icon(
                Icons.keyboard_arrow_right,
                color: Colors.pink,
              ),
        
            ),*/
             Container(
                 margin: EdgeInsets.only(left: 250, top: 20),
                   child: FloatingActionButton(
              mini: true,
              onPressed: (){
                Navigator.push(
                                        context, 
                                        MaterialPageRoute(
                                          builder:(BuildContext context){
                                            return Adresse();
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