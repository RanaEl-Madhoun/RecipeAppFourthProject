import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'components/sign_up_top_image.dart';
import 'components/signup_form.dart';

class SignUp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
  
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
                  child: SignUpForm(),
                ),
                Spacer(),
              ],
            ),
            // const SocalSignUp()
          ],
        ),
      ),
     );
   
  }

}