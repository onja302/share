import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:share_your_park/signin.dart';
//import 'package:url_launcher/url_launcher.dart';



class Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final data = MediaQuery.of(context);
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
                  child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[ 
              Stack( 
                children: <Widget>[
                  Container( // hello
                    margin: EdgeInsets.fromLTRB(10.0, 50.0, 00.0, 00.0),
                    child: Text(
                      'Hello',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize:  40,
                        ),
                      ),
                  ),
                   Container(
                    margin: EdgeInsets.fromLTRB(100.0, 50.0, 00.0, 00.0),
                    child: Text(
                      '.',
                      style: TextStyle(
                        color: Colors.pink,
                        fontSize:  40,
                        ),
                      ),
                  ),
                   Container(
                    margin: EdgeInsets.fromLTRB(10.0, 100.0, 00.0, 00.0),
                    child: Text(
                      'Connexion',
                      style: TextStyle(
                        color: Colors.pink,
                        fontSize:  40,
                        ),
                      ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(135.0, 125.0, 00.0, 00.0),
                    child: Text(
                      'ou',
                      style: TextStyle(
                        fontSize:  40,
                        ),
                      ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(140.0, 160.0, 00.0, 00.0),
                    child: Text(
                      'Inscription',
                      style: TextStyle(
                        color: Colors.pink,
                        fontSize:  40,
                        ),
                      ),
                  ),
                ],
              ),
                /*SizedBox(
                  height: 10,
                ),*/

                //formulaire
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5, horizontal: 70),
                    
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                        boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    //spreadRadius: 7,
                                    blurRadius: 10,
                                    offset: Offset(4, 4), // changes position of shadow
                                  ),
                                ],
                    ),
                    child: TextField(
                      obscureText: false,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: const 
                            BorderRadius.all(
                               const Radius.circular(25.0),
                            ),
                        ),
                          //borderRadius: BorderRadius.circular(20),
                          labelText: "Nom d'utilisateur",
                   ),
                  ),
                   ),
              
                  Container(
                
                    margin: EdgeInsets.symmetric(vertical: 5, horizontal: 70),
                    color: Colors.transparent,
                    child: TextField(
                      //textAlign: TextAlign.center,
                      obscureText: false,
                      decoration: InputDecoration(
                          border: OutlineInputBorder( 
                            borderRadius: const 
                            BorderRadius.all(
                               const Radius.circular(25.0),
                            ),
                          ),
                      
                          labelText: "Adresse Email",
                   ),
                     
                  ),
                  
                   ),
                  Container(
                
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 70),
                    color: Colors.transparent,
                    child: TextField(
                      //textAlign: TextAlign.center,
                      obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder( 
                            borderRadius: const 
                            BorderRadius.all(
                               const Radius.circular(25.0),
                            ),
                          ),
                      
                          labelText: "Mot de passe",
                   ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 140),
                    child: Text( 
                      "Ou s'inscrire avec:",
                       textAlign: TextAlign.center,
                      style: TextStyle(
                        
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    
                    ),
                  ),
                   
                   //inscripition via reseaux sociaux
                  Container(
                    child:Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(120.0, 10.0, 00.0, 00.0),
                          height: 30,
                          width: 30,
                          child: CircleAvatar(
                            radius: 30.0,
                            backgroundImage: AssetImage('assets/fb.png'),
                            
                          ),
                        ),
                        Container(
                          
                          margin: EdgeInsets.fromLTRB(30.0, 10.0, 00.0, 00.0),
                          height: 50,
                          width: 50,
                          child: CircleAvatar(
                            
                            radius: 30.0,
                            backgroundColor: Colors.white70,
                            backgroundImage: AssetImage('assets/goo.png'),
                            ),
                        ),
                         Container(
                          margin: EdgeInsets.fromLTRB(30.0, 10.0, 00.0, 00.0),
                          height: 30,
                          width: 30,
                          child: CircleAvatar(
                            radius: 30.0,
                            backgroundImage: AssetImage('assets/twitter.png'),
                            ),
                        ),
                      ],
                    ), 
                  ),

                    SizedBox(
                      height: 25,
                    ),
                  
                      
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      
                    
                      children: <Widget>[
                        
                         FlatButton(
                                  
                              color: Colors.pink,
                              onPressed: (){Navigator.push(
                                      context, 
                                      MaterialPageRoute(
                                        builder:(BuildContext context){
                                          return Signin();
                                        }
                                      )
                                  );
                                  }, 
                                
                                  child: Text(
                                    "S'inscrire",
                                    style: TextStyle(color: Colors.white, fontSize: 18),
                                    ),
                              shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(50)),
                            ),
                      ],
                     
                    ),
                      
                      SizedBox(
                      height: 15,
                    ),

                      /*Container(
                      
                        //child: Row(
                          //mainAxisAlignment: MainAxisAlignment.center,
                          child: RichText(
                            text: TextSpan(
                            children: [
                            
                             TextSpan(
                              text: "Déjà membre? ",
                              style: TextStyle(
                                fontSize: 16,
                                //fontWeight: FontWeight.bold,
                                ),
                             ),
                             TextSpan(
                              text:"Se connecter ",
                              style: (
                                color: ColorTextStyles.pink,
                                fontSize: 16, ),
                          recognizer: new TapGestureRecognizer(),
                          
                             ),
                          ],
                          ),
                          )
                          
                        ),*/
                         
                      //),
                      Container(
                        margin: EdgeInsets.only(left: 80),
                    //mainAxisAlignment: MainAxisAlignment.center,
                         child: RichText( 
                           textAlign: TextAlign.center,
                              text: TextSpan(
                                children : [
                                  TextSpan(
                                    text: 'Déjà un compte?',
                                    style: TextStyle(color: Colors.black, fontSize: 16)
                                  ),
                                  TextSpan(
                                    text: 'Se connecter',
                                    style: TextStyle(color: Colors.pink, fontSize: 16, decoration: TextDecoration.underline),
                                    recognizer: new TapGestureRecognizer()
                                    ..onTap = (){Navigator.push(
                                      context, 
                                      MaterialPageRoute(
                                        builder:(BuildContext context){
                                          return Signin();
                                        }
                                      )
                                  );
                                  },
                                    // ignore: unnecessary_statements
                                  


                                  )
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

//prograide.com/pregunta/68735/comment-creer-un-lien-hypertexte-dans-le-widget-flutter