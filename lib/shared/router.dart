import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../features/home/presentation/home_page.dart';
import '../features/programs/presentation/programs_page.dart';
import '../features/about/presentation/about_page.dart';
import '../features/contact/presentation/contact_page.dart';
import '../features/research/presentation/research_page.dart';
import '../features/get_involved/presentation/get_involved_page.dart';

class ScaffoldWithNavigation extends StatelessWidget {
  const ScaffoldWithNavigation({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (index) {
          switch (index) {
            case 0:
              context.go('/');
              break;
            case 1:
              context.go('/programs');
              break;
            case 2:
              context.go('/research');
              break;
            case 3:
              context.go('/get-involved');
              break;
          }
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.work_outline),
            selectedIcon: Icon(Icons.work),
            label: 'Programs',
          ),
          NavigationDestination(
            icon: Icon(Icons.science_outlined),
            selectedIcon: Icon(Icons.science),
            label: 'Research',
          ),
          NavigationDestination(
            icon: Icon(Icons.volunteer_activism_outlined),
            selectedIcon: Icon(Icons.volunteer_activism),
            label: 'Get Involved',
          ),
        ],
      ),
    );
  }
}

final appRouter = GoRouter(
  initialLocation: '/',
  errorBuilder: (context, state) => const Scaffold(
    body: Center(
      child: Text('Page not found'),
    ),
  ),
  routes: [
    ShellRoute(
      builder: (context, state, child) => ScaffoldWithNavigation(child: child),
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const HomePage(),
        ),
        GoRoute(
          path: '/programs',
          builder: (context, state) => const ProgramsPage(),
        ),
        GoRoute(
          path: '/research',
          builder: (context, state) => const ResearchPage(),
        ),
        GoRoute(
          path: '/get-involved',
          builder: (context, state) => const GetInvolvedPage(),
        ),
        GoRoute(
          path: '/about',
          builder: (context, state) => const AboutPage(),
        ),
        GoRoute(
          path: '/contact',
          builder: (context, state) => const ContactPage(),
        ),
      ],
    ),
  ],
);
