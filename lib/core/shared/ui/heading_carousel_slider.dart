// In HeadingCarouselSlider.dart
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:fun88_clone/app/theme/app_colors.dart';

class HeadingCarouselSlider extends StatelessWidget {
  final List<String> imageUrls;
  const HeadingCarouselSlider({super.key, required this.imageUrls});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.3,
      decoration: BoxDecoration(color: AppColors.lightgray),
      child: CarouselSlider(
        options: CarouselOptions(
          autoPlay: true,
          aspectRatio: 2.0,
          enlargeCenterPage: true,
        ),
        items:
            imageUrls.map((imageUrl) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Stack(
                  children: [
                    Center(
                      child: Icon(
                        Icons.broken_image,
                        size: 200,
                        color: AppColors.gray,
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),
      ),
    );
  }
}
