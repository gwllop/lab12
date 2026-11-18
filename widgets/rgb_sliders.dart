import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../main.dart';

class RgbSlidersWidget extends StatelessWidget {
  const RgbSlidersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final colorProvider = context.watch<ColorModelProvider>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Red: ${colorProvider.red.toInt()}'),
        Slider(
          value: colorProvider.red,
          min: 0,
          max: 255,
          activeColor: Colors.red,
          onChanged: (value) => colorProvider.setRed(value),
        ),
        Text('Green: ${colorProvider.green.toInt()}'),
        Slider(
          value: colorProvider.green,
          min: 0,
          max: 255,
          activeColor: Colors.green,
          onChanged: (value) => colorProvider.setGreen(value),
        ),
        Text('Blue: ${colorProvider.blue.toInt()}'),
        Slider(
          value: colorProvider.blue,
          min: 0,
          max: 255,
          activeColor: Colors.blue,
          onChanged: (value) => colorProvider.setBlue(value),
        ),
      ],
    );
  }
}