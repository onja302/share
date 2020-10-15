import 'package:flutter/material.dart';
import 'package:share_your_park/car.dart';


class Adresse extends StatelessWidget{
  

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final data = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(),
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
                        "adresse?",
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
                              labelText: 'Adresse',
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
                              labelText: 'Code postal',
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
                              labelText: 'Ville',
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

            /*FlatButton(
              onPressed: (){
                /*Navigator.push(
                                        context, 
                                        MaterialPageRoute(
                                          builder:(BuildContext context){
                                            return Signin();
                                          }
                                        )
                                    );*/
                                    
              }, 
              child: Icon(Icons.keyboard_arrow_right, color: Colors.pink,),
              shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(500), 
                      side: BorderSide(color: Colors.pink, width: 1, style: BorderStyle.solid),
              ),
        ),*/
      
        
               Container(
                 margin: EdgeInsets.only(left: 250, top: 20),
                   child: FloatingActionButton(
              mini: true,
              onPressed: (){Navigator.push(
                                        context, 
                                        MaterialPageRoute(
                                          builder:(BuildContext context){
                                            return Car();
                                          }
                                        )
                                    );},
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