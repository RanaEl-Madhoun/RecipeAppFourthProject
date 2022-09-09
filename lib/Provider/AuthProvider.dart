
import 'dart:developer';
import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:recipes_app/UI/Screens/HomeScreen.dart';
import 'package:recipes_app/models/user.dart';
import 'package:string_validator/string_validator.dart';

import '../Basics/AppRouter.dart';
import '../Helper/Authhelper.dart';
import '../Helper/FireStoreHelper.dart';



class AuthProvider extends ChangeNotifier{
  GlobalKey<FormState>login=GlobalKey();
   GlobalKey<FormState>signupkey=GlobalKey();
  TextEditingController emailcontroller=TextEditingController();
   TextEditingController passwordcontroller=TextEditingController();
   TextEditingController usernamecont=TextEditingController();
   TextEditingController phonecont=TextEditingController();
 nullcheck(String?v){
    if(v==null||v.isEmpty){
      return "This field required";
    }

   }
   Emailvalditon(String value){
    if(!isEmail(value)){
      return "Invalid Email syntax";
    }

   }Passwordvalditon(String value){
    if(value.length<6){
      return "Your password must be larger than that";
    }
   }
   signin ()async{
    if(login.currentState!.validate()){
    
    UserCredential?credentials= await AuthHelper.authHelper.
    signin(emailcontroller.text, passwordcontroller.text);
if(credentials!=null){
 AppRouter.NavigateWithReplacemtnToWidget(HomeScreen());
}
    }
    

   }
   singUp()async{
   if(signupkey.currentState!.validate()){
      UserCredential?credentials =await AuthHelper.authHelper.signup(emailcontroller.text, passwordcontroller.text);
      user appuser=user(name: usernamecont.text,
       email: emailcontroller.text, 
       password: passwordcontroller.text,
        phone: phonecont.text,
        id: credentials!.user!.uid
        );
        FirestoreHelper.firestoreHelper.addUserToFireStore(appuser);
       
      if(credentials!=null){
  AppRouter.NavigateWithReplacemtnToWidget(HomeScreen());
}

    }
   
   }
   checkuser(){
    AuthHelper.authHelper.checkUser();
   }
   signOut(){
    AuthHelper.authHelper.signout();
   }
forgetPassword(){
  AuthHelper.authHelper.forgetPassword("re487840@gmail.com");
}

  
rigester(){}
}