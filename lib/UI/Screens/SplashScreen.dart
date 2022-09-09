import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipes_app/UI/Screens/splsh.dart';

import '../../Provider/AuthProvider.dart';

class splash extends StatelessWidget{
  navfunction(BuildContext context)async{
    await Future.delayed(Duration(seconds: 3));
    Provider.of<AuthProvider>(context,listen: false).checkuser();
  }
  @override
  Widget build(BuildContext context) {
    navfunction(context);
    // TODO: implement build
return Scaffold(
  body: 
  
   
      
       splashimage()
   
  
);
  }

}