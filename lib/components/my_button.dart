import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {

  final String title;
  final Color color;
  final VoidCallback onPress;

  const MyButton({super.key, required this.title, this.color = Colors.grey, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: InkWell(
          onTap: onPress,
          child: Container(
            height: 70,
            decoration: BoxDecoration(color: color, shape: BoxShape.circle),
            child: Center(child: Text(title,style: const TextStyle(fontSize: 20, color: Colors.white),),),
          ),
        ),
      ),
    );
  }
}
