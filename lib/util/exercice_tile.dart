import 'package:flutter/material.dart';

class ExerciceTile extends StatelessWidget {
  const ExerciceTile({
    super.key,
     this.icon,
      required this.exerciceName,
       required this.numberExercice, this.color
       });
  final icon;
  final color;
  final String exerciceName;
  final int numberExercice;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                        ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                          child: Container(
                          padding: const EdgeInsets.all(16),
                          color: color,
                          child: Icon(
                            icon,
                          color: Colors.white,
                          ),
                          ),
                        ),
                  const SizedBox(width: 10),
                   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        exerciceName,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                        ),
                      Text(
                        '$numberExercice Exercices',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Color.fromARGB(255, 123, 138, 123),
                        ),
                        ),
                    ],
                  ),
                  ],
                  ),
                  const Icon(Icons.more_horiz),
                  
                ],
              ),
            ),
    );
  }
}