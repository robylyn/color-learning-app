// Main Dart file
import 'package:flutter/material.dart'; // Flutter Material package
import 'package:audioplayers/audioplayers.dart'; // Audio player package
import 'color_data.dart'; // Import the color data

// Main method
void main() {
  // Entry point of the app
  runApp(const ColorLearningApp()); // Run the app
}

// App widget
class ColorLearningApp extends StatelessWidget {
  // Main app widget
  const ColorLearningApp({super.key}); // Constructor

  // Build method
  @override
  Widget build(BuildContext context) {
    // Build method
    return MaterialApp(
      // Return a MaterialApp widget
      title: 'Eryn David Ahmed Agustin - Color Learning App', // App title
      theme: ThemeData(
        // App theme
        primarySwatch: Colors.blue, // Primary color
      ),
      home: const ColorHomeScreen(), // Home screen
    );
  }
}

// Home screen widget
class ColorHomeScreen extends StatefulWidget {
  // Home screen widget
  const ColorHomeScreen({super.key}); // Constructor

  // Create the state
  @override
  ColorHomeScreenState createState() =>
      ColorHomeScreenState(); // Create the state
}

// Home screen state
class ColorHomeScreenState extends State<ColorHomeScreen> {
  // Home screen state
  final AudioPlayer audioPlayer = AudioPlayer(); // Audio player instance
  int currentIndex = 0; // Current color index

  // Play sound method
  void playSound(String colorName) {
    // Play sound method
    audioPlayer.play(AssetSource('audio/$colorName.mp3')); // Play the sound
  }

  // Next color method
  void nextColor() {
    setState(() {
      currentIndex = (currentIndex + 1) % colors.length; // Update the index
    });
  }

  // Previous color method
  void previousColor() {
    setState(() {
      currentIndex = (currentIndex - 1 + colors.length) %
          colors.length; // Update the index
    });
  }

  // Build method
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            'Eryn David Ahmed Agustin - Color Learning App'), // App bar title
      ),
      body: Column(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                nextColor(); // Move to the next color
                playSound(colors[currentIndex]
                    .name); // Play the sound of the new color
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 500),
                color: colors[currentIndex].color, // Display the current color
                width: double.infinity,
                height: double.infinity,
                child: Center(
                  child: Text(
                    colors[currentIndex].name,
                    style: const TextStyle(color: Colors.white, fontSize: 200),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: FloatingActionButton(
              onPressed: () {
                // Add your logic for the "Start" button here
              },
              child: const Text('Start'),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: previousColor,
            ),
            IconButton(
              icon: const Icon(Icons.arrow_forward),
              onPressed: nextColor,
            ),
          ],
        ),
      ),
    );
  }
}
