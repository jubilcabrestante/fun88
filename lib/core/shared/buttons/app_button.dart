import 'package:flutter/material.dart';
import 'package:fun88_clone/app/theme/app_colors.dart';

class AppButton extends StatelessWidget {
  final String textButton;
  final VoidCallback? onClick;
  final Color? color;
  const AppButton({
    super.key,
    required this.textButton,
    this.onClick,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 24),
      decoration: BoxDecoration(
        color: color,
        border: Border.all(style: BorderStyle.none),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: Center(
        child: Text(
          textButton,
          style: theme.textTheme.labelSmall?.copyWith(
            color: AppColors.textSecondary,
          ),
        ),
      ),
    );
  }
}
