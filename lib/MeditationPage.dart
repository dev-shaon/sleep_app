import 'package:flutter/material.dart';

class MeditationPage extends StatefulWidget {
  const MeditationPage({super.key});

  @override
  State<MeditationPage> createState() => _MeditationPageState();
}

class _MeditationPageState extends State<MeditationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 42, 3, 109),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 240,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  image: AssetImage('assets/images/s2.png'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 35,
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.favorite_border,
                              color: Colors.white,
                              size: 35,
                            ),
                            SizedBox(width: 10),
                            Icon(
                              Icons.download_rounded,
                              color: Colors.white,
                              size: 35,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, 
                children: [
                  const Text(
                    "Night Island",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                   SizedBox(height: 5),
                   Text(
                    "45 MIN - SLEEP MUSIC",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 13,
                      letterSpacing: 1,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Ease the mind into a restful night’s sleep with "
                    "these deep, ambient tones.",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      height: 1.5, 
                    ),
                  ),
                  const SizedBox(height: 30,),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Row(
                        children: [
                          Icon(Icons.favorite, color: Colors.white, size: 24),
                          SizedBox(width: 8),
                          Text(
                            '24.234 Favorites',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.headphones, color: Colors.white, size: 24),
                          SizedBox(width: 8),
                          Text(
                            '24.234 Favorites',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ],
                      ),
                  ],),
                  const SizedBox(height: 30,),
                  const Text("----------------------------------------------------------------------------",
                  style: TextStyle(color: Colors.white12),),
                  const SizedBox(height: 30,),
                  const Text("Related",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold
                  ),),
                  const SizedBox(height: 6,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 90,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(image: AssetImage("assets/images/s3.png"),
                              fit: BoxFit.cover),
                              color: Colors.white
                            ),
                          ),
                          Text(
                            'Moon Clouds',
                            style: TextStyle(color: Colors.white, fontSize: 16,fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 90,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(image: AssetImage("assets/images/s4.png"),
                              fit: BoxFit.cover),
                              color: Colors.white
                            ),
                          ),
                          Text(
                            'Sweet Sleep',
                            style: TextStyle(color: Colors.white, fontSize: 16,fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
