import 'package:flutter/material.dart';
import '../../../shared/widgets/elim_app_bar.dart';
import '../../../config/theme.dart';

class ProgramsPage extends StatelessWidget {
  const ProgramsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ElimAppBar(title: 'Our Programs'),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildProgramHeader(context),
            _buildProgramsList(context),
          ],
        ),
      ),
    );
  }

  Widget _buildProgramHeader(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32.0),
      color: ElimTheme.primaryBlue,
      child: Column(
        children: [
          Text(
            'Transforming Lives Through',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: Colors.white,
                ),
          ),
          const SizedBox(height: 8),
          Text(
            'Evidence-Based Programs',
            style: Theme.of(context).textTheme.displayLarge?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ],
      ),
    );
  }

  Widget _buildProgramsList(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        children: [
          _buildProgramSection(
            context,
            title: 'Y-PREP',
            color: ElimTheme.yPrepColor,
            description: 'Bridging trauma healing with entrepreneurship and '
                'climate action for youth in informal settlements',
            details: [
              'Youth empowerment through skills development',
              'Environmental awareness and action',
              'Mental health support and trauma healing',
              'Entrepreneurship training and mentorship',
            ],
          ),
          const SizedBox(height: 48),
          _buildProgramSection(
            context,
            title: 'Mats Dialogue',
            color: ElimTheme.matsDialogueColor,
            description: 'Trauma healing-centred circles for teen mothers and '
                'women, rooted in African tradition and storytelling',
            details: [
              'Safe spaces for healing and sharing',
              'Traditional wisdom and modern therapy',
              'Support networks for teen mothers',
              'Cultural storytelling and expression',
            ],
          ),
          const SizedBox(height: 48),
          _buildProgramSection(
            context,
            title: 'Vunja Kalabash',
            color: ElimTheme.vunjaKalabashColor,
            description: 'Promoting gender equity through mental health and '
                'Sexual & Gender Based Violence intervention',
            details: [
              'Gender-based violence prevention',
              'Mental health awareness and support',
              'Community education and engagement',
              'Advocacy for policy change',
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildProgramSection(
    BuildContext context, {
    required String title,
    required Color color,
    required String description,
    required List<String> details,
  }) {
    return Container(
      padding: const EdgeInsets.all(32),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 64,
                height: 64,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(32),
                ),
              ),
              const SizedBox(width: 24),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style:
                          Theme.of(context).textTheme.headlineMedium?.copyWith(
                                color: color,
                                fontWeight: FontWeight.bold,
                              ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      description,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 32),
          Text(
            'Program Components',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 16),
          Column(
            children: details.map((detail) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  children: [
                    Container(
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                        color: color,
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Text(
                        detail,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: () {
              // Navigate to detailed program page
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: color,
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
            ),
            child: const Text('Learn More'),
          ),
        ],
      ),
    );
  }
}
