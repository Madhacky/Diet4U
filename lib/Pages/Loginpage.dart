
import 'package:diet4u/Buttons/button.dart';

import 'package:diet4u/Widgets/title.dart';
import 'package:flutter/material.dart';

import '../deviceSizeConfig.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({Key? key}) : super(key: key);

  

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
                const SizedBox(height: 30,),
                Row(
                  children: [ const SizedBox(width: 135,),
                    const Image(image: AssetImage('assets/fitness5.png',),height: 85,width: 70,),
                  ],
                ),
                
                SizedBox(height: MediaQuery.of(context).size.height*0.04,),
                TextField(
                 decoration: InputDecoration(
                   enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: const BorderSide(color: Colors.blue)),
                   labelText: 'Username or E-mail',
                   labelStyle: TextStyle(color: Colors.grey.shade600),
                   prefixIcon: Icon(Icons.lock,color: Colors.grey.shade600,),
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
                SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                Mybutton(text: 'Login', c: Colors.white, c1: Colors.blue, ontap: (){}),
                SizedBox(height: MediaQuery.of(context).size.height*0.08,),
                const Divider(thickness: 2,),
                SizedBox(height: MediaQuery.of(context).size.height*0.08,),
                Mybutton(text: 'Continue With Google', c: Colors.black, c1: Colors.white, borderSide: const BorderSide(), ontap: (){}),
                SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                Mybutton(text: 'Not Registered? Signup', c: Colors.white, c1: Colors.black, borderSide: BorderSide(), ontap: (){})
                
              
                
              ],
            ),
          ) ,
          
        ),
      
    );
  }
}