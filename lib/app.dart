import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final data = MediaQuery.of(context);
    
    return Scaffold(
      backgroundColor: Color(0xffd84d64),
     body: Center(
       
       child: SingleChildScrollView(
                child: Column(
           crossAxisAlignment: CrossAxisAlignment.center,
           
            
           children: <Widget>[
             
             Container(
               margin: EdgeInsets.only(top: 250 ),
               child: Image.asset(
           'assets/logo-syp3.png',
           width: 100,
           height: 100,
           ),
             ),
           ],
         ),
       ),

     ),
    );
  }
}