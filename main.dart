import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'widgets/color_preview.dart';
import 'widgets/rgb_sliders.dart';
void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ColorModelProvider(),
      child: const MyApp(),
    ),
  );
}

class ColorModelProvider extends ChangeNotifier {
  double _red = 50;
  double _green = 128;
  double _blue = 200;

  double get red => _red;
  double get green => _green;
  double get blue => _blue;

  Color get currentColor => Color.fromRGBO(
    _red.toInt(),
    _green.toInt(),
    _blue.toInt(),
    1.0,
  );

  void setRed(double value) {
    _red = value;
    notifyListeners();
  }

  void setGreen(double value) {
    _green = value;
    notifyListeners();
  }

  void setBlue(double value) {
    _blue = value;
    notifyListeners();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ColorPickerScreen(),
    );
  }
}

class ColorPickerScreen extends StatelessWidget {
  const ColorPickerScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo Home Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            ColorPreviewWidget(),
            SizedBox(height: 40),
            RgbSlidersWidget(),  
          ],
        ),
      ),
    );
  }
}