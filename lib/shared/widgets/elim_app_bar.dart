import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../config/theme.dart';

class ElimAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ElimAppBar({
    super.key,
    required this.title,
    this.actions,
    this.showLeading = true,
  });

  final String title;
  final List<Widget>? actions;
  final bool showLeading;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ElimTheme.primaryBlue,
      foregroundColor: Colors.white,
      elevation: 0,
      leading: showLeading
          ? Builder(
              builder: (context) => IconButton(
                icon: const Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
                tooltip: 'Open menu',
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              ),
            )
          : null,
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleLarge?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
      ),
      actions: [
        ...?actions,
        IconButton(
          icon: const Icon(
            Icons.person_outline,
            color: Colors.white,
          ),
          tooltip: 'Profile',
          onPressed: () {
            // Navigate to profile using GoRouter
            context.go('/profile');
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
