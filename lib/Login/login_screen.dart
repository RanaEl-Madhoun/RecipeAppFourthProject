
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:string_validator/string_validator.dart';


import '../../components/background.dart';
import 'components/login_form.dart';
import 'components/login_screen_top_image.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return   Scaffold(
      
      body:  SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
        
            SizedBox(height: 30.sp,),
             Container(
              width: 300.sp,
              height: 300.sp,
            child: Image(image: AssetImage('assete/images/photo1662480013-removebg-preview.png')),
          ),
         
          
            Row(
              children: const [
                Spacer(),
                Expanded(
                 flex: 8,
                  child: LoginForm(),
                ),
                Spacer(),
              ],
            ),
            // const SocalSignUp()
          ],
        ),
      ),
     );
    
  }}

