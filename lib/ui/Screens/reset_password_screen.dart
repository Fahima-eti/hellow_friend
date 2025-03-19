import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../Widget/screen_background.dart';
import 'Login _screen.dart';


class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  TextEditingController _PAController = TextEditingController();
  TextEditingController _CPController = TextEditingController();
  final GlobalKey<FormState>_formkey = GlobalKey<FormState>();
   bool _obscureText = true;
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
                    Text("Set Password",
                        style:Theme.of(context).textTheme.titleLarge
                    ),
                    Text("Set a new password minimum length of 6 letters.",
                        style:Theme.of(context).textTheme.bodyLarge?.copyWith(
                            color: Colors.grey

                        )
                    ),
                    SizedBox(height: 24),
                    TextFormField(
                      obscureText: _obscureText,
                      controller: _PAController,
                      decoration: InputDecoration(
                        hintText: "Password",
                        suffixIcon: IconButton(
                            icon: Icon(_obscureText ?
                            Icons.visibility_off:Icons.visibility),
                          onPressed: () {  setState(() {
                            _obscureText = !_obscureText;
                          });},)
                      ),
                    ),
                    SizedBox(height: 8,),
                    TextFormField(
                      obscureText: true,
                      controller: _CPController,
                      decoration: InputDecoration(
                      hintText: "Confirm password",
                          suffixIcon: IconButton(
                            icon: Icon(_obscureText ?
                            Icons.visibility_off:Icons.visibility),
                            onPressed: () {  setState(() {
                              _obscureText = !_obscureText;
                            });},)
                    ),),
                    SizedBox(height: 16,),
                    ElevatedButton(
                        onPressed: _onTapSubmitButton,
                        child:Text("Confirm")),
                    SizedBox(height: 32,),
                    Center(
                      child: RichText(text: TextSpan(
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,color: Colors.black54,
                          ),
                          children: [
                            TextSpan(text: "Don't have account?"),
                            TextSpan(text: "Sign In",style: TextStyle(
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
  void _onTapSignInButton(){
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder:
          (context)=> const LoginScreen()),
          (pre)=>false,
    );

  }
  void _onTapSubmitButton(){
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder:
          (context)=> const LoginScreen()),
          (pre)=>false,
    );

  }
  @override
  void dispose() {
    _PAController.dispose();
    _CPController.dispose();
    super.dispose();
  }



}