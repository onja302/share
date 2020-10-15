import 'package:flutter/material.dart';

class Syp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    // ignore: unused_local_variable
    final data = MediaQuery.of(context);
    return Scaffold(
    body: Container(
        
      child: Center(
        
        child: Stack(children: [
          Container(
            decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/map.png"),
            fit: BoxFit.cover,
          ),
        ),
          ),
          Container(
            margin: EdgeInsets.only(left:170, top:200),
          child:
            Icon(Icons.wifi, color: Colors.white, size: 60),
        ),
          
                Center(
                  child: Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/logo-syp3.png"),
                        
                        ),
                        ),
                        ),
                ),
        Container(
          margin: EdgeInsets.only(left:130, top:365),
          child: Text("Vous allez recevoir",
          style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold, ),
          ),
        ),
        SizedBox(height:10),
         Container(
          margin: EdgeInsets.only(left:135, top:385),
          child: Text("votre sticker dans",
          style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold, ),
          ),
        ),
        SizedBox(height:10),
         Container(
          margin: EdgeInsets.only(left:135, top:405),
          child: Text("quelques semaines",
          style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold, ),
          ),
        ),



        ],
        ),
        
           
        ),
      ),  
        
        
          
            
          
        
        
      
    );
  }
}