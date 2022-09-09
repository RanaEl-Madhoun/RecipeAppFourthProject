
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../components/already_have_an_account_acheck.dart';
import '../../../constants.dart';
import '../../Provider/AuthProvider.dart';
import '../../Signup/SignUp.dart';
import 'customTextField.dart';


class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthProvider>(
      builder: (context,provider,x) {  
        return  Form(
          key: provider.login,
        child: Column(
          children: [
            customField(
            validator: provider.Emailvalditon
            ,hint: "Your email",
            type:TextInputType.emailAddress,
            icon:Icons.person,
            controller: provider.emailcontroller,
            textInputAction: TextInputAction.next, 
            obscureText: false,
            
            
            ),
          //   TextFormField(
          //  //   validator:provider.Emailvalditon ,
          //     keyboardType: TextInputType.emailAddress,
          //     textInputAction: TextInputAction.next,
          //     cursorColor: kPrimaryColor,
          //    // onSaved: (email) {},
          //     decoration: InputDecoration(
          //       hintText: "Your email",
          //       prefixIcon: Padding(
          //         padding: const EdgeInsets.all(defaultPadding),
          //         child: Icon(Icons.person),
          //       ),
          //     ),
          //   ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: defaultPadding),
              child:customField(validator: provider.Passwordvalditon,
              icon:Icons.lock ,
              controller: provider.passwordcontroller,
              hint: "Your password",
              obscureText:true,
            
              textInputAction: TextInputAction.done,
              )
            //   child: TextFormField(
            //     textInputAction: TextInputAction.done,
            //     obscureText: true,
            //     cursorColor: kPrimaryColor,
            //     decoration: InputDecoration(
            //       hintText: "Your password",
            //       prefixIcon: Padding(
            //         padding: const EdgeInsets.all(defaultPadding),
            //         child: Icon(Icons.lock),
            //       ),
            //     ),
            //   ),
             ),
            const SizedBox(height: defaultPadding),
            Hero(
              tag: "login_btn",
              child: InkWell(
                onTap:(){
                  provider.signin();
                  
                } ,
                child: Container(
                  width: 100,
                  height: 50,
                 // margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 250, 225, 141)
                  ),
                  child: Center(child: Text( "Login".toUpperCase(),style: TextStyle(fontWeight: FontWeight.w600),)),
                )),
              // child: ElevatedButton(
              //   onPressed: () {
              //   provider.signin();
                  
              //   },
              //   child: Text(
              //     "Login".toUpperCase(),
              //   ),
              // ),
            ),
            const SizedBox(height: defaultPadding),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUp();
                    },
                  ),
                );
              },
            ),
            SizedBox(height: 8,),
            TextButton(onPressed: (){
              provider.forgetPassword();

            }, child: Text("Forget password ?",style: const TextStyle(color: kPrimaryColor),))
          ],
        ),
      );
      },
     
    );
  }
}
