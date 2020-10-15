import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';



class Manu extends StatefulWidget {
  @override
  _ManuState createState() => _ManuState();
}

class _ManuState extends State<Manu>
    with SingleTickerProviderStateMixin {
      bool dialvisible = true;
       ScrollController scrollController;

       
  @override
  void initState() {
    super.initState();

    scrollController = ScrollController()
      ..addListener(() {
        setDialVisible(scrollController.position.userScrollDirection ==
            ScrollDirection.forward);
      });
  }
  
 void setDialVisible(bool value) {
    setState(() {
      dialvisible = value;
    });
  }


SpeedDial buildSpeedDial() {
    return SpeedDial(
      /*animatedIcon: AnimatedIcons.menu_close,
      animatedIconTheme: IconThemeData(size: 22.0),
      // child: Icon(Icons.add),
      onOpen: () => print('OPENING DIAL'),
      onClose: () => print('DIAL CLOSED'),
      visible: dialvisible,
      curve: Curves.bounceIn,*/
      children: [
        SpeedDialChild(
          child: Icon(Icons.accessibility, color: Colors.white),
          backgroundColor: Colors.deepOrange,
          onTap: (){},
        ),
        SpeedDialChild(
          child: Icon(Icons.brush, color: Colors.white),
          backgroundColor: Colors.green,
          onTap: (){},
        
        ),
        SpeedDialChild(
          child: Icon(Icons.keyboard_voice, color: Colors.white),
          backgroundColor: Colors.blue,
          onTap: () {},
          
        ),
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

       floatingActionButton: FloatingActionButton(onPressed: (){
         buildSpeedDial();
       },),
      /*floatingActionButton: CircularButton(
        color: Colors.blueGrey,
        width: 50,
        height: 50,
        icon: Icon(Icons.add, color: Colors.white),
        onClick: (){},
        
       /*onPressed: (){},
      backgroundColor: Colors.black,
      elevation: 10.0,*/
     ),*/
      
      bottomNavigationBar: BottomAppBar(
        
        //shape: CircularNotchedRectangle(),
        //notchMargin: 6.0,
        color: Colors.yellow,
        elevation: 20.0,
        child: Container(
          height: 80,
                  child: Row(
            
            children: <Widget> [
              IconButton(icon: Icon(Icons.menu), onPressed: (){}, color: Colors.white),
              IconButton(icon: Icon(Icons.search), onPressed: (){}, color: Colors.white),
              IconButton(icon: Icon(Icons.help_outline), onPressed: (){}, color: Colors.white),
            ],
            
            ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
     
      
    );
  }
}

/*class CircularButton extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  final Icon icon;
  final Function onClick;
CircularButton({this.color, this.height, this.icon, this.width, this.onClick});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      width: width,
      height: height,
      child:  IconButton(icon: icon, enableFeedback: true, onPressed: onClick),

    );
  }
}*/


//https://www.youtube.com/watch?v=S7KG4prI7A4