import 'package:flutter/material.dart';

class Emoji extends StatelessWidget {
  
const Emoji({super.key, required this.emoji});
final String emoji;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 102, 196, 243),
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Text(
            emoji,
            style: const TextStyle(fontSize: 28,
            color: Colors.yellow
            ),
          ),
        ),
      );
  }
}