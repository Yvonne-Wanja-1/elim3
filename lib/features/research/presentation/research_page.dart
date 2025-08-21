import 'package:flutter/material.dart';
import '../../../shared/widgets/elim_app_bar.dart';

class ResearchPage extends StatelessWidget {
  const ResearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: ElimAppBar(title: 'Research & Publications'),
      body: Center(
        child: Text('Research Page'),
      ),
    );
  }
}
