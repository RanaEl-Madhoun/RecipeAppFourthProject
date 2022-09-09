
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import '../../../components/already_have_an_account_acheck.dart';
import '../../../constants.dart';
import '../../Login/components/customTextField.dart';
import '../../Login/login_screen.dart';
import '../../Provider/AuthProvider.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthProvider>(
      builder: (context, provider, x) {
        return  Form(
          key: provider.signupkey,
        child: Column(
          children: [
             Padding(
              padding: const EdgeInsets.symmetric(vertical: defaultPadding),
    
            child:customField(validator: provider.nullcheck,
              icon:Icons.person ,
              controller: provider.usernamecont,
              hint: "Your name",
              obscureText:false,
              textInputAction: TextInputAction.next,
              )
            ),
             Padding(
              padding: const EdgeInsets.symmetric(vertical: defaultPadding),
    
            child:customField(validator: provider.nullcheck,
              icon:Icons.phone ,
              controller: provider.phonecont,
              hint: "Your phone",
              obscureText:false,
              textInputAction: TextInputAction.next,
              )
            ),
              customField(validator: provider.Emailvalditon,hint: "Your email",
              type:TextInputType.emailAddress,
              icon:Icons.email,
              controller: provider.emailcontroller,
              textInputAction: TextInputAction.next, 
              obscureText: false,
              
              
              ),
          
            Padding(
              padding: const EdgeInsets.symmetric(vertical: defaultPadding),
    
            child:customField(validator: provider.Passwordvalditon,
              icon:Icons.lock ,
              controller: provider.passwordcontroller,
              hint: "Your password",
              obscureText:true,
              textInputAction: TextInputAction.done,
              )
            ),
            
            const SizedBox(height: defaultPadding / 2),
              InkWell(
                onTap:(){
                  provider.singUp();
                } ,
                child: Container(
                  width: 150,
                  height: 50,
                 // margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 250, 225, 141)
                  ),
                  child: Center(child: Text( "Sign Up".toUpperCase(),style: TextStyle(fontWeight: FontWeight.w600),)),
                )),
            // ElevatedButton(
            //   onPressed: () async{
            //    provider.singUp();
               
                 
            //      // AppRouter.NavigateToWidget(sign());
            //     }
            //   ,
            //   child: Text("Sign Up".toUpperCase()),
            // ),
            const SizedBox(height: defaultPadding),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      );
        
      },
      
    );
  }
}