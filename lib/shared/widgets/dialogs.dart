import 'package:flutter/material.dart';
import '../../config/theme.dart';

class ElimDialogs {
  static Future<void> showNotImplementedDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(
          'Coming Soon',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: ElimTheme.primaryBlue,
                fontWeight: FontWeight.bold,
              ),
        ),
        content: const Text(
          'This feature is under development and will be available soon.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text(
              'OK',
              style: TextStyle(color: ElimTheme.primaryGreen),
            ),
          ),
        ],
      ),
    );
  }

  static Future<bool?> showSignOutConfirmation(BuildContext context) {
    return showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(
          'Sign Out',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: ElimTheme.primaryBlue,
                fontWeight: FontWeight.bold,
              ),
        ),
        content: const Text('Are you sure you want to sign out?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: Text(
              'Cancel',
              style: TextStyle(color: Colors.grey[600]),
            ),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: Text(
              'Sign Out',
              style: TextStyle(color: ElimTheme.primaryGreen),
            ),
          ),
        ],
      ),
    );
  }
}
