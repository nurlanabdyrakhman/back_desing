import 'package:back_desing/utils/emoticon_face.dart';
import 'package:back_desing/utils/exercise_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text(
                            'Hi Jared!',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            '23 jan, 2023',
                            style: TextStyle(color: Colors.black87),
                          )
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Icon(
                            Icons.notifications,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Row(
                        children: [
                          Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Search',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'How do you feel?',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.black,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          EmoticonFace(
                            emoticonFace: '😩',
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
                            'Bad',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          EmoticonFace(
                            emoticonFace: '🙂',
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
                            'FANE',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          EmoticonFace(
                            emoticonFace: '😃',
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
                            'Well',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          EmoticonFace(
                            emoticonFace: '🥳',
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
                            'Excelent',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Expanded(
              child: Container(
                color: Colors.grey[300],
                padding: const EdgeInsets.all(25),
                child: Center(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Exercises',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Icon(Icons.more_horiz),
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Expanded(
                        child: ListView(
                          children: const[
                            ExerciseTile(
                              icon: Icons.favorite,
                              exercisiName: 'Speaking Skills,',
                              numberOfExercises: 16,
                              color: Colors.orange,
                            ),
                            ExerciseTile(
                               icon: Icons.person,
                              exercisiName: 'Reading  Skills,',
                              numberOfExercises: 10,
                              color: Colors.blue,
                            ),
                            ExerciseTile(
                               icon: Icons.star,
                              exercisiName: 'Writing Skills,',
                              numberOfExercises: 20,
                              color: Colors.pink,
                            ),
                          ],
                        ),
                      )
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
