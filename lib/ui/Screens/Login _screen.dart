import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hellow_friend/ui/Screens/Register_screen.dart';
import 'package:hellow_friend/ui/Screens/fogot_password_verify_email_screen.dart';
import 'package:hellow_friend/ui/Screens/main_bottom_nav_screen.dart';

import '../../Widget/screen_background.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _EController = TextEditingController();
  TextEditingController _PController = TextEditingController();
  final GlobalKey<FormState>_formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
          child:Padding(
            padding: EdgeInsets.all(24),
            child:Form(
              key: _formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 80,),
                Text("Get Started With",
                  style:Theme.of(context).textTheme.titleLarge
                  ),
                SizedBox(height: 24),
                TextField(
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.emailAddress,
                  controller: _EController,
                  decoration: InputDecoration(
                    hintText:"Email",
                  )
                ),
                SizedBox(height: 16,),
                TextField(
                  controller: _PController,
                  decoration: InputDecoration(
                    hintText: "Password"
                  ),
                ),
                SizedBox(height: 16,),
                ElevatedButton(
                    onPressed: _onTapSignInButton,
                    child:Icon(Icons.arrow_circle_right_outlined,size: 20,)),
                SizedBox(height: 32,),
                Center(
                  child: Column(
                    children: [
                      TextButton(onPressed: _onTapForgotPasswordButton, child:Text("Forgot password?"),),
                      RichText(text: TextSpan(
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,color: Colors.black54,
                        ),
                        children: [
                          TextSpan(text: "Don't have account?"),
                          TextSpan(text: "Sign Up",style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold
                          ),
                          recognizer: TapGestureRecognizer()..onTap = _onTapSignUpButton
                          )
                        ]
                      )),
                    ],
                  ),
                )
              ],
            ),
          )
          )
      ),
    );
  }
  _onTapSignInButton(){
    Navigator.pushAndRemoveUntil(context,
        MaterialPageRoute(builder:
            (context)=>MainBottomNavScreen()),
          (predicate)=>false
    );
  }

  void _onTapSignUpButton(){
    Navigator.push(context,
        MaterialPageRoute(builder:
            (context)=>RegisterScreen()));
  }

  void _onTapForgotPasswordButton(){
    Navigator.push(context,
        MaterialPageRoute(builder:
            (context)=>ForgotPasswordVerifyEmailScreen()));
  }
@override
  void dispose() {
_EController.dispose();
_PController.dispose();
    super.dispose();
  }

}


