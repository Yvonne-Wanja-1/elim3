import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../config/theme.dart';

class ElimDrawerMenu extends StatelessWidget {
  const ElimDrawerMenu({super.key});

  String _getCurrentRoute(BuildContext context) {
    final String location = GoRouterState.of(context).uri.path;
    return location;
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              height: 200,
              decoration: BoxDecoration(
                color: ElimTheme.primaryBlue,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 8,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: SafeArea(
                bottom: false,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Image.asset(
                        'assets/images/logo.png',
                        height: 60,
                        errorBuilder: (context, error, stackTrace) =>
                            const Icon(
                          Icons.healing,
                          size: 48,
                          color: ElimTheme.primaryBlue,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Elim Trust',
                      style:
                          Theme.of(context).textTheme.headlineSmall?.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Research • Healing • Resilience',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            color: Colors.white.withOpacity(0.9),
                          ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 8),
            _buildSection(
              context,
              title: 'MAIN NAVIGATION',
              children: [
                _buildMenuItem(
                  context,
                  icon: Icons.home_outlined,
                  activeIcon: Icons.home,
                  title: 'Home',
                  onTap: () => context.go('/'),
                  isActive: _getCurrentRoute(context) == '/',
                ),
                _buildMenuItem(
                  context,
                  icon: Icons.work_outline,
                  activeIcon: Icons.work,
                  title: 'Programs',
                  onTap: () => context.go('/programs'),
                  isActive: _getCurrentRoute(context) == '/programs',
                ),
                _buildMenuItem(
                  context,
                  icon: Icons.science_outlined,
                  activeIcon: Icons.science,
                  title: 'Research',
                  onTap: () => context.go('/research'),
                  isActive: _getCurrentRoute(context) == '/research',
                ),
                _buildMenuItem(
                  context,
                  icon: Icons.volunteer_activism_outlined,
                  activeIcon: Icons.volunteer_activism,
                  title: 'Get Involved',
                  onTap: () => context.go('/get-involved'),
                  isActive: _getCurrentRoute(context) == '/get-involved',
                ),
              ],
            ),
            const SizedBox(height: 16),
            _buildSection(
              context,
              title: 'RESOURCES',
              children: [
                _buildMenuItem(
                  context,
                  icon: Icons.photo_library_outlined,
                  activeIcon: Icons.photo_library,
                  title: 'Gallery',
                  onTap: () => context.go('/gallery'),
                  isActive: _getCurrentRoute(context) == '/gallery',
                ),
                _buildMenuItem(
                  context,
                  icon: Icons.info_outline,
                  activeIcon: Icons.info,
                  title: 'About Us',
                  onTap: () => context.go('/about'),
                  isActive: _getCurrentRoute(context) == '/about',
                ),
                _buildMenuItem(
                  context,
                  icon: Icons.contact_mail_outlined,
                  activeIcon: Icons.contact_mail,
                  title: 'Contact',
                  onTap: () => context.go('/contact'),
                  isActive: _getCurrentRoute(context) == '/contact',
                ),
              ],
            ),
            const SizedBox(height: 16),
            _buildSection(
              context,
              title: 'ACCOUNT',
              children: [
                _buildMenuItem(
                  context,
                  icon: Icons.person_outline,
                  activeIcon: Icons.person,
                  title: 'Profile',
                  onTap: () => context.go('/profile'),
                  isActive: _getCurrentRoute(context) == '/profile',
                ),
                _buildMenuItem(
                  context,
                  icon: Icons.login,
                  activeIcon: Icons.login,
                  title: 'Login',
                  onTap: () {
                    // TODO: Handle login
                    Navigator.pop(context);
                  },
                  isActive: false,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItem(
    BuildContext context, {
    required IconData icon,
    IconData? activeIcon,
    required String title,
    required VoidCallback onTap,
    bool isActive = false,
  }) {
    final color = isActive ? ElimTheme.primaryGreen : Colors.grey[700];

    return ListTile(
      leading: Icon(
        isActive ? (activeIcon ?? icon) : icon,
        color: color,
      ),
      title: Text(
        title,
        style: TextStyle(
          color: color,
          fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
        ),
      ),
      onTap: () {
        Navigator.pop(context); // Close drawer
        onTap();
      },
      selected: isActive,
      selectedTileColor: ElimTheme.primaryGreen.withOpacity(0.1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }

  Widget _buildSection(BuildContext context,
      {required String title, required List<Widget> children}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text(
            title,
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  color: Colors.grey[600],
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                ),
          ),
        ),
        ...children,
      ],
    );
  }
}
