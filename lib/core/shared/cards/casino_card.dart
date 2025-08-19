import 'package:flutter/material.dart';
import 'package:fun88_clone/app/theme/app_colors.dart';

class CasinoCardWidget extends StatelessWidget {
  final String title;

  const CasinoCardWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: 150,
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
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
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: AppColors.gray,
              borderRadius: const BorderRadius.vertical(
                bottom: Radius.circular(25),
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
