import 'package:flutter/material.dart';
import '../../../shared/widgets/elim_app_bar.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: ElimAppBar(title: 'About Us'),
      body: Center(
        child: Text('About Page'),
      ),
    );
  }
}
