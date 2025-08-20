import 'package:flutter/material.dart';
import 'package:fun88_clone/app/theme/app_colors.dart';

class CasinoCardWidget extends StatelessWidget {
  final String title;
  final double width;

  const CasinoCardWidget({super.key, required this.title, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: width,
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.lightgray,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(25),
              ),
              child: Icon(Icons.broken_image, size: 50, color: AppColors.gray),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: AppColors.gray,
              borderRadius: const BorderRadius.vertical(
                bottom: Radius.circular(12),
              ),
            ),
            child: Text(
              title,
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
