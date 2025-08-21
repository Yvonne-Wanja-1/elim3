import 'package:flutter/material.dart';
import '../../../shared/widgets/elim_app_bar.dart';
import '../../../config/theme.dart';

class ResearchPage extends StatelessWidget {
  const ResearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ElimAppBar(title: 'Research & Publications'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildResearchHeader(context),
              const SizedBox(height: 24),
              _buildCurrentResearch(context),
              const SizedBox(height: 32),
              _buildPublications(context),
              const SizedBox(height: 32),
              _buildPartnerships(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildResearchHeader(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: ElimTheme.primaryBlue,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Rooted in Research',
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 16),
          Text(
            'We collaborate with local & global institutions to generate research from Africa. Our focus areas include mental health, trauma healing, and community resilience.',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: Colors.white,
                ),
          ),
        ],
      ),
    );
  }

  Widget _buildCurrentResearch(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Current Research Projects',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: ElimTheme.primaryBlue,
                fontWeight: FontWeight.bold,
              ),
        ),
        const SizedBox(height: 16),
        _buildResearchCard(
          context,
          title: 'Eco-social Pathways & HIV Prevention',
          description:
              'A 4-year longitudinal mixed methods study on eco-social factors and HIV prevention outcomes among youth aged 15–24 in Kenya.',
          icon: Icons.psychology,
        ),
        _buildResearchCard(
          context,
          title: 'Climate-Affected Youth & Sexual Health',
          description:
              'Investigating the intersection of climate change impacts and youth sexual health outcomes in vulnerable communities.',
          icon: Icons.eco,
        ),
        _buildResearchCard(
          context,
          title: 'SGBV & Mental Health in Universities',
          description:
              'Examining the prevalence and impact of sexual and gender-based violence in higher education institutions.',
          icon: Icons.school,
        ),
      ],
    );
  }

  Widget _buildResearchCard(
    BuildContext context, {
    required String title,
    required String description,
    required IconData icon,
  }) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: ElimTheme.primaryGreen.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(
                    icon,
                    color: ElimTheme.primaryGreen,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Text(
              description,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 12),
            TextButton(
              onPressed: () {
                // TODO: Navigate to detailed research page
              },
              child: Text(
                'Learn More',
                style: TextStyle(color: ElimTheme.primaryGreen),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPublications(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Recent Publications',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: ElimTheme.primaryBlue,
                fontWeight: FontWeight.bold,
              ),
        ),
        const SizedBox(height: 16),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 3,
          itemBuilder: (context, index) {
            return _buildPublicationCard(context);
          },
        ),
      ],
    );
  }

  Widget _buildPublicationCard(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color: ElimTheme.backgroundGray,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(
                    Icons.article,
                    color: ElimTheme.primaryBlue,
                    size: 32,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Impact of Community-Based Trauma Healing Programs',
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Journal of Community Psychology, 2025',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: Colors.grey[600],
                            ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // TODO: Open publication link
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: ElimTheme.primaryBlue,
              ),
              child: const Text('Read Publication'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPartnerships(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Research Partners',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: ElimTheme.primaryBlue,
                fontWeight: FontWeight.bold,
              ),
        ),
        const SizedBox(height: 16),
        Wrap(
          spacing: 16,
          runSpacing: 16,
          children: [
            _buildPartnerLogo(context, 'University of Toronto'),
            _buildPartnerLogo(context, 'CIHR'),
            _buildPartnerLogo(context, 'NFRF'),
            _buildPartnerLogo(context, 'SSHRC'),
          ],
        ),
      ],
    );
  }

  Widget _buildPartnerLogo(BuildContext context, String name) {
    return Container(
      width: 120,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey[300]!),
      ),
      child: Center(
        child: Text(
          name,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: Colors.grey[600],
              ),
        ),
      ),
    );
  }
}
