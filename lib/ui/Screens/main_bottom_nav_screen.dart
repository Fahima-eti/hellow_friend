import 'package:flutter/material.dart';

import '../../Widget/tm_app_bar.dart';

class MainBottomNavScreen extends StatefulWidget {
  const MainBottomNavScreen({super.key});

  @override
  State<MainBottomNavScreen> createState() => _MainBottomNavScreenState();
}

class _MainBottomNavScreenState extends State<MainBottomNavScreen> {
  int _selectedindex = 0;
  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      appBar: TMAppBar(),
      bottomNavigationBar: NavigationBar(
          selectedIndex: _selectedindex,
          onDestinationSelected: (index){
            _selectedindex = index;
            setState(() {});
          },

          destinations:const [
        NavigationDestination(icon: Icon(Icons.new_label), label:"New"),
        NavigationDestination(icon: Icon(Icons.ac_unit_sharp), label:"Progress"),
        NavigationDestination(icon: Icon(Icons.done), label:"Complete"),
        NavigationDestination(icon: Icon(Icons.cancel_outlined), label:"Cancelled"),
        
      ]),

    );
  }
}



