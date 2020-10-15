import 'package:flutter/material.dart';
import 'package:share_your_park/inscri.dart';

class Signin extends StatefulWidget {
  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin>{

    bool checked = true;
    void change(bool isChecked){
      setState(() {
       checked = isChecked;
      });
    }
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

                    Container( // hello
                        margin: EdgeInsets.fromLTRB(0.0, 50.0, 00.0, 00.0),
                        child: Text(
                          'Hello',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize:  40,
                            ),
                          ),
                      ),
                      Container( // hello
                        margin: EdgeInsets.fromLTRB(90.0, 45.0, 00.0, 00.0),
                        child: Text(
                          '.',
                          style: TextStyle(
                            color: Colors.pink,
                            fontSize:  46,
                            ),
                          ),
                       ),
                       Container( // hello
                        margin: EdgeInsets.fromLTRB(5.0, 100.0, 00.0, 00.0),
                        child: Text(
                          'Connexion',
                          style: TextStyle(
                            color: Colors.pink,
                            fontSize:  46,
                            ),
                          ),
                       ),
                       Container( // hello
                      margin: EdgeInsets.fromLTRB(130.0, 130.0, 00.0, 00.0),
                        child: Text(
                          'ou',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize:  44,
                            ),
                          ),
                       ),
                       Container( // hello
                        margin: EdgeInsets.fromLTRB(130.0, 165.0, 00.0, 00.0),
                        child: Text(
                          'Inscription',
                          style: TextStyle(
                            color: Colors.pink,
                            fontSize:  46,
                            ),
                          ),
                       ),
          ],
          ),
          SizedBox(height: 10,),       

                    Container(
                      margin:EdgeInsets.symmetric(vertical: 5, horizontal:70), 
                      child: TextField(
                          
                          //textAlign: TextAlign.center,
                          obscureText: false,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                            borderRadius: const BorderRadius.all(const Radius.circular(25.0))
                          ),
                          labelText: "Adresse Email",
                        
                           )
                           
                        )
                      
                    ),             
                       
                  

          SizedBox(height: 10,),

                  Container(
                  
                    margin: EdgeInsets.symmetric(vertical:5, horizontal:70),
                    
                    child: TextField(
                      
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
SizedBox(height: 20,),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.start,
                         children: <Widget> [
                           Checkbox(
                              value: checked, 
                              onChanged: change
                        ),
                        Text('Se souvenir de moi'),
                         ]
                       ),

    

    SizedBox(height: 50,),

              Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      
                    
                      children: <Widget>[
                        
                         FlatButton(
                                  
                                  color: Colors.pink,
                                  onPressed: (){
                                    Navigator.push(
                                      context, 
                                      MaterialPageRoute(
                                        builder:(BuildContext context){
                                          return Inscri();
                                        }
                                      )
                                  );
                                  }, 
                                
                                  child: Text(
                                    "Se connecter",
                                    style: TextStyle(color: Colors.white, fontSize: 18),
                                    ),
                                    shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(50)),
                            ),
                      ],
                     
                    ),
                       
                ],
              
               
           
            
          ),
        ),
      ),
    );
  }

}
    
  