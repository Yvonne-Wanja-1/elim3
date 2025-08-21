import 'package:flutter/material.dart';
import '../../../shared/widgets/elim_app_bar.dart';
import '../../../config/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ElimAppBar(title: 'Elim Trust Organization'),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildHeroSection(context),
            _buildMissionSection(context),
            _buildProgramsPreview(context),
            _buildImpactSection(context),
          ],
        ),
      ),
    );
  }

  Widget _buildHeroSection(BuildContext context) {
    return Container(
      height: 500,
      decoration: const BoxDecoration(
        color: ElimTheme.primaryBlue,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Research. Healing. Resilience.',
              style: Theme.of(context).textTheme.displayLarge?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            Text(
              'An African Institution involved in research, building trauma awareness and\n'
              'promoting youth and women resilience through mental and sexual health,\n'
              'entrepreneurship skills at the nexus of climate change.',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Colors.white,
                  ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                // Navigate to Get Involved page
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: ElimTheme.primaryGreen,
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              ),
              child: const Text('Get Involved'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMissionSection(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        children: [
          Text(
            'Our Mission',
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(height: 16),
          Text(
            'We apply evidence-based approaches that promote psycho-resilience, '
            'gender equity and resilient entrepreneurial pathways in African '
            'communities and institutions.',
            style: Theme.of(context).textTheme.bodyLarge,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildProgramsPreview(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32.0),
      color: Colors.grey[100],
      child: Column(
        children: [
          Text(
            'Our Programs',
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(height: 32),
          Wrap(
            spacing: 24,
            runSpacing: 24,
            children: [
              _buildProgramCard(
                context,
                title: 'Y-PREP',
                color: ElimTheme.yPrepColor,
                description:
                    'Bridging trauma healing with entrepreneurship and '
                    'climate action for youth in informal settlements',
              ),
              _buildProgramCard(
                context,
                title: 'Mats Dialogue',
                color: ElimTheme.matsDialogueColor,
                description:
                    'Trauma healing-centred circles for teen mothers and '
                    'women, rooted in African tradition and storytelling',
              ),
              _buildProgramCard(
                context,
                title: 'Vunja Kalabash',
                color: ElimTheme.vunjaKalabashColor,
                description:
                    'Promoting gender equity through mental health and '
                    'Sexual & Gender Based Violence intervention',
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildProgramCard(
    BuildContext context, {
    required String title,
    required Color color,
    required String description,
  }) {
    return Container(
      width: 300,
      padding: const EdgeInsets.all(24),
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
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(24),
            ),
          ),
          const SizedBox(height: 16),
          Text(
            title,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: color,
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 8),
          Text(
            description,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(height: 16),
          TextButton(
            onPressed: () {
              // Navigate to program details
            },
            child: Text(
              'Learn More',
              style: TextStyle(color: color),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildImpactSection(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32.0),
      color: ElimTheme.primaryBrown,
      child: Column(
        children: [
          Text(
            'Our Impact',
            style: Theme.of(context).textTheme.displayMedium?.copyWith(
                  color: Colors.white,
                ),
          ),
          const SizedBox(height: 32),
          Wrap(
            spacing: 48,
            runSpacing: 32,
            alignment: WrapAlignment.center,
            children: [
              _buildImpactStat(
                context,
                number: '1000+',
                label: 'Youth Empowered',
              ),
              _buildImpactStat(
                context,
                number: '50+',
                label: 'Communities Reached',
              ),
              _buildImpactStat(
                context,
                number: '25+',
                label: 'Research Publications',
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildImpactStat(
    BuildContext context, {
    required String number,
    required String label,
  }) {
    return Column(
      children: [
        Text(
          number,
          style: Theme.of(context).textTheme.displayLarge?.copyWith(
                color: ElimTheme.accentSand,
                fontWeight: FontWeight.bold,
              ),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: Colors.white,
              ),
        ),
      ],
    );
  }
}
