import 'package:flutter/material.dart';
import 'package:fun88_clone/app/theme/app_colors.dart';

class Sidebar extends StatelessWidget {
  final List<String> list;
  final VoidCallback? onTap;
  const Sidebar({super.key, required this.list, this.onTap});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(
            height: 100,
            child: DrawerHeader(
              child: Text(
                "FUN88",
                style: theme.textTheme.labelLarge?.copyWith(
                  color: AppColors.primary,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
            ),
          ),
          ...list.map((item) => ListTile(title: Text(item), onTap: onTap)),
        ],
      ),
    );
  }
}
