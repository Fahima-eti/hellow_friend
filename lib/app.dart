import 'package:flutter/material.dart';
import 'package:hellow_friend/ui/Screens/Splash.dart';

class TaskManagerApp extends StatelessWidget {
  const TaskManagerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorSchemeSeed: Colors.green,
          inputDecorationTheme: InputDecorationTheme(
              hintStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.grey
              ),
              fillColor: Colors.white,
              filled: true,
              contentPadding: EdgeInsets.symmetric(
                  horizontal: 16
              ),
              border: _getZeroBorder(),
              enabledBorder: _getZeroBorder(),

          ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              fixedSize:const Size.fromWidth(double.maxFinite),
              backgroundColor: Colors.green,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              )
          ),
        ),
        textTheme: TextTheme(
          titleLarge: TextStyle(
              fontSize: 24,fontWeight: FontWeight.w600
          ),
        )
      ),

      home: const SplashScreen(),
    );
  }
    OutlineInputBorder _getZeroBorder(){
      return const OutlineInputBorder(
        borderSide: BorderSide.none
      );
    }

}
