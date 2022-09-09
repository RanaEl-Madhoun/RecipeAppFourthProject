import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class customField extends StatelessWidget{
  TextInputType ?type;
  String ?hint;
  TextEditingController ?controller;
 final Function validator;
 IconData ?icon;
 bool obscureText;
 TextInputAction?textInputAction;
 customField({
  this.type,
  this.hint,
  this.controller,
  required this.validator,
  this.icon,
  required this.obscureText,
  this.textInputAction
 });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
 return  Container(
  width: double.infinity,
  decoration: BoxDecoration(
    color: Colors.white,
     boxShadow: [
            BoxShadow(
               color: Color.fromARGB(255, 235, 232, 232).withOpacity(0.5),
        spreadRadius: 1,
        blurRadius: 7,
        offset: Offset(0, 3), 
            )
           ],
  ),
   child: TextFormField(
    
    obscureText:obscureText,
    controller: controller,
              validator: (x) => validator(x), 
              keyboardType: type,
                textInputAction: textInputAction,
              cursorColor: kPrimaryColor,
               // onSaved: (email) {},
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: hint,
                  prefixIcon: Padding(
                  padding: const EdgeInsets.all(defaultPadding),
                    child: Icon(icon),
                  ),
                ),
              ),
 );
  }

}