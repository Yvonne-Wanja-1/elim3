import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'config/theme.dart';
import 'shared/router.dart';

void main() {
  runApp(
    const ProviderScope(
      child: ElimApp(),
    ),
  );
}

class ElimApp extends ConsumerWidget {
  const ElimApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      title: 'Elim Trust Organization',
      theme: ElimTheme.lightTheme,
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
    );
  }
}
