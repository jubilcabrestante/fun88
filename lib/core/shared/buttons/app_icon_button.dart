import 'package:flutter/material.dart';

class AppIconButton extends StatelessWidget {
  final IconData icon;
  final double? size;
  final Color color;
  final VoidCallback? onPressed;
  const AppIconButton({
    super.key,
    required this.icon,
    this.onPressed,
    this.size = 25,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(icon, size: size, color: color),
    );
  }
}
