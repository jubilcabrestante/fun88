import 'package:flutter/material.dart';

class GameCardWidget extends StatelessWidget {
  const GameCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: SizedBox(
        width: 100, // adjust as needed
        height: 100, // adjust as needed
        child: Container(
          color: Colors.grey[300],
          child: const Center(
            child: Icon(Icons.broken_image, size: 50, color: Colors.grey),
          ),
        ),
      ),
    );
  }
}
