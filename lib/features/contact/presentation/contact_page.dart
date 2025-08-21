import 'package:flutter/material.dart';
import '../../../shared/widgets/elim_app_bar.dart';
import '../../../shared/widgets/elim_drawer_menu.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: ElimAppBar(title: 'Contact Us'),
      drawer: ElimDrawerMenu(),
      body: Center(
        child: Text('Contact Page'),
      ),
    );
  }
}
