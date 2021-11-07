import 'package:flutter/material.dart';

import '../deviceSizeConfig.dart';



class EditFieldWidget extends StatelessWidget {
  final String? text1;
  final String? text2;
   EditFieldWidget({@required this.text1,@required this.text2});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(
        top: DeviceSizeConfig.screenHeight!*0.02
      ),
      child: Column(
        children: [
          TextField(
                 decoration: InputDecoration(
                   enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color: Colors.blue)),
                   labelText: text1,
                   labelStyle: TextStyle(color: Colors.grey.shade600),
                   prefixIcon: Icon(Icons.person,color: Colors.grey.shade600,)
                 ),
               ),
               SizedBox(
                 height: DeviceSizeConfig.screenHeight!*0.01,
               ),
              TextField(
                 decoration: InputDecoration(
                   enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color: Colors.blue)),
                   labelText: text2,
                   labelStyle: TextStyle(color: Colors.grey.shade600),
                   prefixIcon: Icon(Icons.lock,color: Colors.grey.shade600,),
                   
                   
                 ),
               ),
        ],
      ),
    );
  }
}