import 'package:flutter/material.dart';
import 'package:flutter_intro_pages1/util/emoji.dart';
import 'package:flutter_intro_pages1/util/exercice_tile.dart';

class HomePage1 extends StatefulWidget {
  const HomePage1({super.key});

  @override
  State<HomePage1> createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.badge), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.view_agenda), label: '')
      ]),
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                      
                  //Hi, machaallah!
                  const Column(
                    children: [
                      Text(
                        'Hi, machaallah',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(
                        '02 Déc, 2024',
                        style: TextStyle(color: Color.fromARGB(255, 102, 196, 243)),
                        ),
                    ],
                  ),
                  
                  //notification
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.all(12),
                    child: const Icon(
                      Icons.notifications,
                      color: Colors.white,
                      ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              //search bar
              Container(
                decoration: BoxDecoration(
                  color:const Color.fromARGB(255, 102, 196, 243), 
                  borderRadius: BorderRadius.circular(12),
                ),
                padding:const EdgeInsets.all(12),
                child: const Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.white,
                      ),
                      SizedBox(width: 5),
                    Text(
                      'Search',
                      style: TextStyle(color: Colors.white),
                      ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              //how do you feel,
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'How do you feel?',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Icon(Icons.more_horiz,
                  color: Colors.white,)
                ],
              ),
              
              const SizedBox(height: 20),
              //four emojis
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  //bad
                  Column(
                    children: [
                      Emoji(emoji: '😔'),
                      Text('Bad',
                      style: TextStyle(color: Colors.white),),
                    ],
                  ),
                  //fine
                  Column(
                    children: [
                      Emoji(emoji: '🙂'),
                      Text('Fine',
                      style: TextStyle(color: Colors.white),),
                    ],
                  ),
                  //good
                  Column(
                    children: [
                      Emoji(emoji: '😃'),
                      Text('Good',
                      style: TextStyle(color: Colors.white),),
                    ],
                  ),
                  //enjoie
                   Column(
                    children: [
                      Emoji(emoji: '😅'),
                      Text('Enjoie',
                      style: TextStyle(color: Colors.white),),
                    ],
                  ),
                ],
              ),
                ],
              ),
            ),

            const SizedBox(height: 25),
            
            Expanded(
              child: Container(
                padding: const EdgeInsets.fromLTRB(25, 25, 25, 20.0),
                decoration: const BoxDecoration(
                color: Color.fromARGB(255, 213, 240, 214),
                  borderRadius:BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0)
                  ) 
                ),
                child: Center(
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Exercices',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                            ),
                            Icon(Icons.more_horiz),
                        ],
                      ),
                      const SizedBox(height: 15),
                     Expanded(
                       child: ListView(
                        children: const [
                          ExerciceTile(
                            icon: Icons.favorite,
                            exerciceName: 'Speaking Skills',
                            numberExercice: 25,
                            color: Colors.orange,
                          ),
                          ExerciceTile(
                            icon: Icons.android,
                            exerciceName: 'Technologie Skills',
                            numberExercice: 05,
                            color: Colors.green,
                          ),
                          ExerciceTile(
                            icon: Icons.mobile_friendly,
                            exerciceName: 'Developpers Skills',
                            numberExercice: 55,
                            color: Colors.purple,
                          ),
                           ExerciceTile(
                            icon: Icons.apple_outlined,
                            exerciceName: 'Technologie Skills',
                            numberExercice: 05,
                            color: Colors.red,
                          ),
                           ExerciceTile(
                            icon: Icons.analytics,
                            exerciceName: 'Mathematics Skills',
                            numberExercice: 75,
                            color: Colors.blue,
                          ),
                        ],
                       ),
                     ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}