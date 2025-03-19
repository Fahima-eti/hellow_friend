import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hellow_friend/Utlis/asset_path.dart';
import 'package:hellow_friend/Widget/screen_background.dart';

import 'Login _screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    _moveToNextPage();
  }

  Future<void> _moveToNextPage()async{
    await Future.delayed(Duration(seconds: 2));
    Navigator.pushReplacement(context,
    MaterialPageRoute(builder: (context)=>LoginScreen()));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ScreenBackground(
          child: Center(
            child: SvgPicture.asset(AssetPath.logoSvg,
              width: 120,
            ),
          )
      )

    );
  }
}
