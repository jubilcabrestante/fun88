import 'package:flutter/material.dart';

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
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
      decoration: BoxDecoration(
        color: color,
        border: Border.all(style: BorderStyle.solid, width: 1),
        borderRadius: BorderRadius.all(Radius.circular(25)),
      ),
      child: Center(child: Text(textButton, style: theme.textTheme.labelSmall)),
    );
  }
}
