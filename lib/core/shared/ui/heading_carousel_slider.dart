// In HeadingCarouselSlider.dart
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:fun88_clone/app/theme/app_colors.dart';

class HeadingCarouselSlider extends StatelessWidget {
  const HeadingCarouselSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.25,
      decoration: BoxDecoration(color: AppColors.lightgray),
      child: CarouselSlider(
        options: CarouselOptions(
          autoPlay: true,
          aspectRatio: 1.0,
          enlargeCenterPage: true,
        ),
        items: List.generate(5, (index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Container(
              width: double.infinity,
              color: AppColors.lightgray,
              child: Center(
                child: Icon(
                  Icons.broken_image,
                  size: 150,
                  color: AppColors.gray,
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
