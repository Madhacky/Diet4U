import 'package:flutter/material.dart';

import '../deviceSizeConfig.dart';

class Mybutton extends StatelessWidget {
  final String? text;
  final Color? c;
  final Color? c1;
  final BorderSide? borderSide;
  final Icon? i;
  

Mybutton({@required this.text,@required this.c,@required this.c1,@required this.borderSide, this.i});
  @override
  Widget build(BuildContext context) {
    return 
      
       InkWell(
        child: Container(
          height: DeviceSizeConfig.screenHeight!*0.06,
          width: DeviceSizeConfig.screenWidth,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 2.5
              )
          ],
          color: c1,borderRadius: BorderRadius.circular(25)),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              
              Text(text!,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: c)),
            ],
          ),
        ),
      );
      
    
  }
}