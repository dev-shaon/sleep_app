import 'package:flutter/material.dart';

class MusicPage extends StatefulWidget {
  const MusicPage({super.key});

  @override
  State<MusicPage> createState() => _MusicPageState();
}

class _MusicPageState extends State<MusicPage> {
  double _currentPosition = 90;
  double _totalDuration = 2700;

  String formatTime(double seconds) {
    int m = (seconds ~/ 60);
    int s = (seconds % 60).toInt();
    return "${m.toString().padLeft(2, '0')}:${s.toString().padLeft(2, '0')}";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // remove backgroundColor
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.white, 
        ),
        title: const Text("Music", style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_border, size: 30),
            color: Colors.white, 
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.download, size: 30),
            color: Colors.white,
          ),
        ],
      ),

      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/sleep.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Controls and content
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              const Text(
                "Focus \nAttention",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 34,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 60),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        _currentPosition = (_currentPosition - 15).clamp(
                          0,
                          _totalDuration,
                        );
                      });
                    },
                    icon: const Icon(Icons.replay_10),
                    iconSize: 40,
                    color: Colors.white,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFF3E3E5B),
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.pause, color: Colors.white),
                      iconSize: 50,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        _currentPosition = (_currentPosition + 15).clamp(
                          0,
                          _totalDuration,
                        );
                      });
                    },
                    icon: const Icon(Icons.forward_10),
                    iconSize: 40,
                    color: Colors.white,
                  ),
                ],
              ),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Slider(
                  min: 0,
                  max: _totalDuration,
                  value: _currentPosition,
                  activeColor: Colors.white,
                  inactiveColor: Colors.grey.shade400,
                  onChanged: (value) {
                    setState(() {
                      _currentPosition = value;
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      formatTime(_currentPosition),
                      style: const TextStyle(color: Colors.white),
                    ),
                    Text(
                      formatTime(_totalDuration),
                      style: const TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
