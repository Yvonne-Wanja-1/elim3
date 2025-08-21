import 'package:flutter/material.dart';
import '../../../shared/widgets/elim_app_bar.dart';
import '../../../config/theme.dart';

class GetInvolvedPage extends StatelessWidget {
  const GetInvolvedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ElimAppBar(title: 'Get Involved'),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildHeader(context),
            _buildWaysToHelp(context),
            _buildVolunteerSection(context),
            _buildDonateSection(context),
            _buildPartnerSection(context),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32),
      color: ElimTheme.primaryBlue,
      child: Column(
        children: [
          Text(
            'Make a Difference',
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 16),
          Text(
            'Join us in building resilient communities and transforming lives through sustainable solutions.',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: Colors.white,
                ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildWaysToHelp(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Ways to Help',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  color: ElimTheme.primaryBlue,
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 24),
          Row(
            children: [
              Expanded(
                child: _buildWayToHelpCard(
                  context,
                  icon: Icons.volunteer_activism,
                  title: 'Volunteer',
                  description: 'Share your skills and time',
                  color: ElimTheme.primaryGreen,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: _buildWayToHelpCard(
                  context,
                  icon: Icons.favorite,
                  title: 'Donate',
                  description: 'Support our programs',
                  color: ElimTheme.accentTerracotta,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: _buildWayToHelpCard(
                  context,
                  icon: Icons.handshake,
                  title: 'Partner',
                  description: 'Collaborate with us',
                  color: ElimTheme.primaryBrown,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildWayToHelpCard(
    BuildContext context, {
    required IconData icon,
    required String title,
    required String description,
    required Color color,
  }) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Icon(
              icon,
              size: 40,
              color: color,
            ),
            const SizedBox(height: 12),
            Text(
              title,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: color,
                  ),
            ),
            const SizedBox(height: 8),
            Text(
              description,
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildVolunteerSection(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      color: Colors.grey[100],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Volunteer Opportunities',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  color: ElimTheme.primaryBlue,
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 24),
          _buildOpportunityCard(
            context,
            title: 'Community Facilitator',
            description: 'Lead trauma healing circles and support groups',
            commitment: '4-6 hours per week',
            location: 'Various locations in Kenya',
          ),
          const SizedBox(height: 16),
          _buildOpportunityCard(
            context,
            title: 'Youth Mentor',
            description: 'Guide and support youth in entrepreneurship programs',
            commitment: '6-8 hours per week',
            location: 'Informal settlements',
          ),
          const SizedBox(height: 16),
          _buildOpportunityCard(
            context,
            title: 'Research Assistant',
            description:
                'Support data collection and analysis for our research projects',
            commitment: 'Project-based',
            location: 'Flexible',
          ),
          const SizedBox(height: 24),
          Center(
            child: ElevatedButton(
              onPressed: () {
                // TODO: Implement volunteer application
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: ElimTheme.primaryGreen,
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              ),
              child: const Text('Apply to Volunteer'),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildOpportunityCard(
    BuildContext context, {
    required String title,
    required String description,
    required String commitment,
    required String location,
  }) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 8),
            Text(description),
            const SizedBox(height: 16),
            Row(
              children: [
                Icon(Icons.access_time, size: 16, color: Colors.grey[600]),
                const SizedBox(width: 8),
                Text(
                  commitment,
                  style: TextStyle(color: Colors.grey[600]),
                ),
                const SizedBox(width: 24),
                Icon(Icons.location_on, size: 16, color: Colors.grey[600]),
                const SizedBox(width: 8),
                Text(
                  location,
                  style: TextStyle(color: Colors.grey[600]),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDonateSection(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Support Our Work',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  color: ElimTheme.primaryBlue,
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 24),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Your donation helps us:',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 16),
                  _buildDonationImpact(
                    context,
                    'Support trauma healing programs',
                    Icons.healing,
                  ),
                  _buildDonationImpact(
                    context,
                    'Provide entrepreneurship training',
                    Icons.business,
                  ),
                  _buildDonationImpact(
                    context,
                    'Fund research initiatives',
                    Icons.science,
                  ),
                  _buildDonationImpact(
                    context,
                    'Expand community outreach',
                    Icons.people,
                  ),
                  const SizedBox(height: 24),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        // TODO: Implement donation process
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: ElimTheme.accentTerracotta,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 32,
                          vertical: 16,
                        ),
                      ),
                      child: const Text('Donate Now'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDonationImpact(
      BuildContext context, String text, IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Icon(icon, color: ElimTheme.primaryGreen),
          const SizedBox(width: 16),
          Expanded(
            child: Text(text),
          ),
        ],
      ),
    );
  }

  Widget _buildPartnerSection(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      color: Colors.grey[100],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Partnership Opportunities',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  color: ElimTheme.primaryBlue,
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 24),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Partner with us in:',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 16),
                  _buildPartnershipType(
                    context,
                    'Research Collaboration',
                    'Join our research initiatives and contribute to evidence-based solutions.',
                  ),
                  _buildPartnershipType(
                    context,
                    'Program Implementation',
                    'Help us expand our reach and impact in communities.',
                  ),
                  _buildPartnershipType(
                    context,
                    'Resource Sharing',
                    'Share expertise, facilities, or resources to enhance our programs.',
                  ),
                  const SizedBox(height: 24),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        // TODO: Implement partnership inquiry
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: ElimTheme.primaryBrown,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 32,
                          vertical: 16,
                        ),
                      ),
                      child: const Text('Become a Partner'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPartnershipType(
    BuildContext context,
    String title,
    String description,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 4),
          Text(description),
        ],
      ),
    );
  }
}
