
import 'package:flutter/material.dart';
import '../deviceSizeConfig.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
           children: <Widget>[
             Image(image: AssetImage('assets/fitness5.png',),height: 200,width: 150,),
             SizedBox(height: 20,),
             Text('DIET AND FITNESS APP',style: TextStyle(color: Colors.white,fontWeight: FontWeight.normal,fontSize: 18,letterSpacing: 4),)
             
           ],
        ),

      )
      
    );
  }
}