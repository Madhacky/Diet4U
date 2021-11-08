import 'package:diet4u/Pages/signuppage.dart';
import 'package:diet4u/Widgets/buttonarea.dart';
import 'package:diet4u/Widgets/editfields.dart';
import 'package:diet4u/Widgets/title.dart';
import 'package:flutter/material.dart';

import '../deviceSizeConfig.dart';

class Loginpage extends StatelessWidget {
  

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
                    Image(image: AssetImage('assets/fitness5.png',),height: 85,width: 70,),
                  ],
                ),
                
                SizedBox(height: 50,),
                EditFieldWidget(text1:'Username or Email',text2: 'Password',),
                
                ButtonArea(ontap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) => Signuppage()));}
                ,buttontext: 'Login',lbuttontext: 'Continue with google',ttext: 'Create New Account',),
                
              ],
            ),
          ) ,
          
        ),
      
    );
  }
}