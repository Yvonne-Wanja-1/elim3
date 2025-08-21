import 'package:flutter/material.dart';
import '../../../shared/widgets/elim_app_bar.dart';
import '../../../config/theme.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ElimAppBar(title: 'Profile'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildProfileHeader(context),
            _buildProfileContent(context),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileHeader(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: ElimTheme.primaryBlue,
      ),
      child: Column(
        children: [
          const CircleAvatar(
            radius: 50,
            backgroundColor: Colors.white,
            child: Icon(
              Icons.person,
              size: 50,
              color: ElimTheme.primaryBlue,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            'John Doe',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 8),
          Text(
            'john.doe@example.com',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: Colors.white.withOpacity(0.8),
                ),
          ),
        ],
      ),
    );
  }

  Widget _buildProfileContent(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSection(
            context,
            title: 'Personal Information',
            items: [
              _buildMenuItem(
                context,
                icon: Icons.edit,
                title: 'Edit Profile',
                onTap: () {
                  // TODO: Navigate to edit profile
                },
              ),
              _buildMenuItem(
                context,
                icon: Icons.location_on,
                title: 'Address',
                onTap: () {
                  // TODO: Navigate to address settings
                },
              ),
              _buildMenuItem(
                context,
                icon: Icons.phone,
                title: 'Contact Information',
                onTap: () {
                  // TODO: Navigate to contact settings
                },
              ),
            ],
          ),
          const SizedBox(height: 24),
          _buildSection(
            context,
            title: 'Account Settings',
            items: [
              _buildMenuItem(
                context,
                icon: Icons.notifications,
                title: 'Notification Preferences',
                onTap: () {
                  // TODO: Navigate to notification settings
                },
              ),
              _buildMenuItem(
                context,
                icon: Icons.language,
                title: 'Language',
                onTap: () {
                  // TODO: Navigate to language settings
                },
              ),
              _buildMenuItem(
                context,
                icon: Icons.privacy_tip,
                title: 'Privacy Settings',
                onTap: () {
                  // TODO: Navigate to privacy settings
                },
              ),
            ],
          ),
          const SizedBox(height: 24),
          _buildSection(
            context,
            title: 'App Settings',
            items: [
              _buildMenuItem(
                context,
                icon: Icons.help,
                title: 'Help & Support',
                onTap: () {
                  // TODO: Navigate to help
                },
              ),
              _buildMenuItem(
                context,
                icon: Icons.info,
                title: 'About',
                onTap: () {
                  // TODO: Navigate to about
                },
              ),
              _buildMenuItem(
                context,
                icon: Icons.logout,
                title: 'Sign Out',
                onTap: () {
                  // TODO: Handle sign out
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSection(
    BuildContext context, {
    required String title,
    required List<Widget> items,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text(
            title,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: ElimTheme.primaryBlue,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        Card(
          margin: EdgeInsets.zero,
          child: Column(
            children: items,
          ),
        ),
      ],
    );
  }

  Widget _buildMenuItem(
    BuildContext context, {
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon, color: ElimTheme.primaryGreen),
      title: Text(title),
      trailing: const Icon(Icons.chevron_right),
      onTap: onTap,
    );
  }
}
