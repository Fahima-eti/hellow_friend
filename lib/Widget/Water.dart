import 'package:flutter/material.dart';


class waterbtn extends StatelessWidget {
  final int amount;
  IconData ? icon;
  final VoidCallback onClick;
   waterbtn({
    super.key,
     required this.amount,this.icon, required this.onClick
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton.icon(onPressed: onClick,
          style: ElevatedButton.styleFrom(backgroundColor: Colors.blue.shade200),
          label: Text("${amount}ml",style: TextStyle(fontWeight: FontWeight.w500,
              fontSize: 24,color: Colors.white),),
          icon: Icon(icon ?? Icons.water_drop,size: 30,color: Colors.white,),),
      ),
    );
  }
}