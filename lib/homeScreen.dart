import 'package:flutter/material.dart';
import 'package:sleep_app/MeditationPage.dart';
import 'package:sleep_app/music.dart';
import 'package:sleep_app/sleep.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
  const Homescreen(),
  const SleepPage(),
  MeditationPage(),
  MusicPage(), // <- your custom Music page
  const ProfilePage(),
];


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _selectedIndex == 0
          ? Container(
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/sleep.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                      const Text(
                        "Sleep Stories",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                        ),
                      ),
                      const SizedBox(height: 15),
                      const Text(
                        "Soothing bedtime stories to help you fall into a deep and natural sleep",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 34),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(24),
                                  color: Colors.lightBlue,
                                ),
                                child: const Icon(
                                  Icons.control_point,
                                  size: 40,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(height: 4),
                              const Text(
                                "All",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(24),
                                  color: const Color.fromARGB(255, 126, 108, 178),
                                ),
                                child: const Icon(
                                  Icons.favorite_border,
                                  size: 40,
                                  color: Colors.white70,
                                ),
                              ),
                               SizedBox(height: 4),
                               Text(
                                "Favorite",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(24),
                                  color: const Color.fromARGB(255, 126, 108, 178),
                                ),
                                child:  Icon(
                                  Icons.sentiment_dissatisfied_outlined,
                                  size: 40,
                                  color: Colors.white70,
                                ),
                              ),
                               SizedBox(height: 4),
                               Text(
                                "Anxious",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(24),
                                  color: const Color.fromARGB(255, 126, 108, 178),
                                ),
                                child: const Icon(
                                  Icons.nightlight_outlined,
                                  size: 40,
                                  color: Colors.white70,
                                ),
                              ),
                               SizedBox(height: 4),
                               Text(
                                "Sleep",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                       SizedBox(height: 30),
                      Container(
                        height: 180,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image:  DecorationImage(
                            image: AssetImage("assets/images/s1.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                       SizedBox(height: 20),
                      Padding(
                        padding:  EdgeInsets.all(2.0),
                        child: SingleChildScrollView(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // First column
                              Column(
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        height: 120,
                                        width: 150,
                                        decoration: BoxDecoration(
                                          image: const DecorationImage(
                                            image: AssetImage("assets/images/s3.png"),
                                            fit: BoxFit.cover,
                                          ),
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(16),
                                        ),
                                      ),
                                      Text(
                                          "Night Island",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold
                                            ),
                                        ),
                                        Text(
                                          "45 MIN - SLEEP MUSIC",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold
                                            ),
                                        ),
                                    ],
                                  ),
                                   SizedBox(height: 10),
                                  Column(
                                    children: [
                                      Container(
                                        height: 120,
                                        width: 150,
                                        decoration: BoxDecoration(
                                          image: const DecorationImage(
                                            image: AssetImage("assets/images/s4.png"),
                                            fit: BoxFit.cover,
                                          ),
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(16),
                                        ),
                                      ),
                                      Text(
                                          "Night Island",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold
                                            ),
                                        ),
                                        Text(
                                          "45 MIN - SLEEP MUSIC",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold
                                            ),
                                        ),
                                    ],
                                  ),
                                ],
                              ),
                              // Second column
                              Column(
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        height: 120,
                                        width: 150,
                                        decoration: BoxDecoration(
                                          image: const DecorationImage(
                                            image: AssetImage("assets/images/s4.png"),
                                            fit: BoxFit.cover,
                                          ),
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(16),
                                        ),
                                      ),
                                      Text(
                                          "Night Island",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold
                                            ),
                                        ),
                                        Text(
                                          "45 MIN - SLEEP MUSIC",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold
                                            ),
                                        ),
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  Column(
                                    children: [
                                      Container(
                                        height: 120,
                                        width: 150,
                                        decoration: BoxDecoration(
                                          image: const DecorationImage(
                                            image: AssetImage("assets/images/s2.png"),
                                            fit: BoxFit.cover,
                                          ),
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(16),
                                        ),
                                      ),
                                      Text(
                                          "Night Island",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold
                                            ),
                                        ),
                                        Text(
                                          "45 MIN - SLEEP MUSIC",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold
                                            ),
                                        ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          : _pages[_selectedIndex], // other pages

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        backgroundColor: const Color.fromARGB(255, 11, 1, 99),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.nightlight_outlined),
            label: "Sleep",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.self_improvement),
            label: "Meditate",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.music_note), label: "Music"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}




class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Shaon das", style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
