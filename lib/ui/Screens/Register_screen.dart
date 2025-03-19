import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../Widget/screen_background.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  final TextEditingController _EController = TextEditingController();
  final TextEditingController _FController = TextEditingController();
  final TextEditingController _LController = TextEditingController();
  final TextEditingController _MController = TextEditingController();
  final TextEditingController _PController = TextEditingController();
final GlobalKey<FormState>_formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
          child:SingleChildScrollView(
            child: Padding(
              key: _formkey,
              padding: EdgeInsets.all(24),
              child:Form(
              key:_formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 80,),
                  Text("Join With Us",
                      style:Theme.of(context).textTheme.titleLarge
                  ),
                  SizedBox(height: 24),
                  TextField(
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.emailAddress,
                    controller:_EController ,
                      decoration: InputDecoration(
                        hintText:"Email",
                      )
                  ),
                  SizedBox(height: 24),
                  TextField(
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.text,
                    controller: _FController,
                      decoration: InputDecoration(
                        hintText:"First name",
                      )
                  ),
                  SizedBox(height: 24),
                  TextField(
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.text,
                    controller: _LController,
                      decoration: InputDecoration(
                        hintText:"Last name",
                      )
                  ),
                  SizedBox(height: 24),
                  TextField(
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.phone,
                    controller: _MController,
                      decoration: InputDecoration(
                        hintText:"Mobile",
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
                      onPressed: (){},
                      child:Icon(Icons.arrow_circle_right_outlined,size: 20,)),
                  SizedBox(height: 32,),
                  Center(
                    child: RichText(text: TextSpan(
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,color: Colors.black54,
                        ),
                        children: [
                          TextSpan(text: "Already have an account?"),
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
            ),
          )
          )

      ),
    );
  }
  void _onTapSignInButton(){
    Navigator.pop(context);
  }
@override
  void dispose() {
_PController.dispose();
_MController.dispose();
_LController.dispose();
_FController.dispose();
_EController.dispose();
    super.dispose();
  }


}