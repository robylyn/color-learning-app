import 'package:flutter/material.dart'; // Flutter Material package

class ColorInfo {
  // ColorInfo class
  final Color color; // Color property
  final String name; // Name property

  ColorInfo(this.color, this.name); // Constructor
}

final List<ColorInfo> colors = [
  // List of colors
  ColorInfo(Colors.red, 'Red'),
  ColorInfo(Colors.green, 'Green'),
  ColorInfo(Colors.blue, 'Blue'),
  ColorInfo(Colors.yellow, 'Yellow'),
  ColorInfo(Colors.orange, 'Orange'),
  ColorInfo(Colors.purple, 'Purple'),
  ColorInfo(Colors.pink, 'Pink'),
  ColorInfo(Colors.brown, 'Brown'),
  ColorInfo(Colors.black, 'Black'),
  ColorInfo(Colors.white, 'White'),
];
