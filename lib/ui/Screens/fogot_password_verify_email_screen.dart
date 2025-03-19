import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hellow_friend/ui/Screens/forgot_password_pin_verification_screen.dart';

import '../../Widget/screen_background.dart';


class ForgotPasswordVerifyEmailScreen extends StatefulWidget {
  const ForgotPasswordVerifyEmailScreen({super.key});

  @override
  State<ForgotPasswordVerifyEmailScreen> createState() => _ForgotPasswordVerifyEmailScreenState();
}

class _ForgotPasswordVerifyEmailScreenState extends State<ForgotPasswordVerifyEmailScreen> {
  TextEditingController _EController = TextEditingController();
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
                    Text("Your Email Address",
                        style:Theme.of(context).textTheme.titleLarge
                    ),
                    Text("A 6 digit verification pin will be sent to your email.",
                        style:Theme.of(context).textTheme.bodyLarge?.copyWith(
                       color: Colors.grey

                        )
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

                    SizedBox(height: 16,),
                    ElevatedButton(
                        onPressed: _onTapSubmitButton,
                        child:Icon(Icons.arrow_circle_right_outlined,size: 20,)),
                    SizedBox(height: 32,),
                    Center(
                      child: RichText(text: TextSpan(
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
                                recognizer: TapGestureRecognizer()..onTap = _onTapSignInButton
                            )
                          ]
                      )),
                    )
                  ],
                ),
              )
          )
      ),
    );
  }
  void _onTapSubmitButton(){
    Navigator.push(
        context, MaterialPageRoute(builder:
        (context)=>ForgotPasswordVerifyPinEmailScreen()));
  }

  void _onTapSignInButton(){
    Navigator.pop(context);
  }
  @override
  void dispose() {
_EController.dispose();
    super.dispose();
  }




}