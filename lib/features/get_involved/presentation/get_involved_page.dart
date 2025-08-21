import 'package:flutter/material.dart';
import '../../../shared/widgets/elim_app_bar.dart';

class GetInvolvedPage extends StatelessWidget {
  const GetInvolvedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: ElimAppBar(title: 'Get Involved'),
      body: Center(
        child: Text('Get Involved Page'),
      ),
    );
  }
}
