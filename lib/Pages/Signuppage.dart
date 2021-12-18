

import 'package:diet4u/Buttons/button.dart';
import 'package:diet4u/Widgets/title.dart';
import 'package:flutter/material.dart';

import '../deviceSizeConfig.dart';

class Signuppage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    DeviceSizeConfig().init(context);
    return  SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          resizeToAvoidBottomInset: false,
          body: Container(
            margin: EdgeInsets.symmetric(
              horizontal: DeviceSizeConfig.screenHeight!*0.024,
              vertical: DeviceSizeConfig.screenHeight!*0.020
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TitleWidget(),
                 SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                Row(
                  children: const [ SizedBox(width: 135,),
                    Image(image: AssetImage('assets/fitness5.png',),height: 85,width: 70,),
                  ],
                ),
                
                SizedBox(height: MediaQuery.of(context).size.height*0.07,),
                TextField(
                 decoration: InputDecoration(
                   enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: const BorderSide(color: Colors.blue)),
                   labelText: 'E-mail',
                   labelStyle: TextStyle(color: Colors.grey.shade600),
                   prefixIcon: Icon(Icons.mail,color: Colors.grey.shade600,),
                   ),
               ),
               SizedBox(height: DeviceSizeConfig.screenHeight!*0.01),
               TextField(
                 decoration: InputDecoration(
                   enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: const BorderSide(color: Colors.blue)),
                   labelText: 'Password',
                   labelStyle: TextStyle(color: Colors.grey.shade600),
                   prefixIcon: Icon(Icons.lock,color: Colors.grey.shade600,),
                   ),
               ),
               SizedBox(height: DeviceSizeConfig.screenHeight!*0.01),
               TextField(
                 decoration: InputDecoration(
                   enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: const BorderSide(color: Colors.blue)),
                   labelText: 'Confirm Password',
                   labelStyle: TextStyle(color: Colors.grey.shade600),
                   prefixIcon: Icon(Icons.lock,color: Colors.grey.shade600,),
                   ),
               ),
                SizedBox(height: DeviceSizeConfig.screenHeight!*0.02),
               Mybutton(text: 'Signup', c: Colors.white, c1: Colors.blue, borderSide: const BorderSide(), ontap: (){}),
              SizedBox(height: DeviceSizeConfig.screenHeight!*0.06),
              const Divider(thickness: 2,),
              SizedBox(height: DeviceSizeConfig.screenHeight!*0.06),
              Mybutton(text: 'Signup With Google', c: Colors.white, c1: Colors.black, borderSide: const BorderSide(), ontap: (){})
                
                
                
                
              ],
            ),
          ) ,
          
        ),
      
    );
  }
}