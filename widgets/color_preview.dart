import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../main.dart';

class ColorPreviewWidget extends StatelessWidget {
  const ColorPreviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ColorModelProvider>(
      builder: (context, colorProvider, child) {
        return Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            color: colorProvider.currentColor,
            borderRadius: BorderRadius.circular(4),
          ),
        );
      },
    );
  }
}