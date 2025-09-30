import '../../add_place/screens/add_place_screen.dart';
import 'package:flutter/material.dart';
import '../../../core/constants/app_colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header with profile info
            _buildProfileHeader(context),

            // Content sections with background
            Container(
              color: AppColors.background,
              child: Column(
                children: [
                  const SizedBox(height: 24),

                  // Settings sections
                  _buildAccountSection(),
                  const SizedBox(height: 24),

                  _buildSubscriptionSection(),
                  const SizedBox(height: 24),

                  _buildProFeaturesSection(context),
                  const SizedBox(height: 24),

                  _buildPreferencesSection(),
                  const SizedBox(height: 24),

                  _buildSupportSection(),
                  const SizedBox(height: 32),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileHeader(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(
        24,
        24 + MediaQuery.of(context).padding.top,
        24,
        24,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [AppColors.primary, AppColors.primaryLight],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundColor: AppColors.surface,
            child: Icon(Icons.person, size: 50, color: AppColors.primary),
          ),
          const SizedBox(height: 16),
          Text(
            'Guest User',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: AppColors.onPrimary,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Sign in to access all features',
            style: TextStyle(
              fontSize: 16,
              color: AppColors.onPrimary.withOpacity(0.9),
            ),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              // TODO: Navigate to sign in screen
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.surface,
              foregroundColor: AppColors.primary,
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
            ),
            child: const Text('Sign In'),
          ),
        ],
      ),
    );
  }

  Widget _buildAccountSection() {
    return _buildSection('Account', [
      _buildSettingsItem(
        icon: Icons.person_outline,
        title: 'Edit Profile',
        subtitle: 'Update your personal information',
        onTap: () {
          // TODO: Navigate to edit profile
        },
      ),
      _buildSettingsItem(
        icon: Icons.security,
        title: 'Privacy & Security',
        subtitle: 'Manage your privacy settings',
        onTap: () {
          // TODO: Navigate to privacy settings
        },
      ),
      _buildSettingsItem(
        icon: Icons.notifications_outlined,
        title: 'Notifications',
        subtitle: 'Customize your notification preferences',
        onTap: () {
          // TODO: Navigate to notification settings
        },
      ),
    ]);
  }

  Widget _buildSubscriptionSection() {
    return _buildSection('Subscription', [_buildSubscriptionCard()]);
  }

  Widget _buildSubscriptionCard() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [AppColors.secondary, AppColors.secondaryLight],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.star, color: AppColors.accent, size: 28),
              const SizedBox(width: 12),
              Text(
                'EatOut Pro',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppColors.onSecondary,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            'Upgrade to Pro and unlock:',
            style: TextStyle(
              fontSize: 16,
              color: AppColors.onSecondary.withOpacity(0.9),
            ),
          ),
          const SizedBox(height: 16),
          ...[
            'Create and manage your restaurant menu',
            'Set prices and availability',
            'Analytics and insights',
            'Priority support',
          ].map(
            (feature) => Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Row(
                children: [
                  Icon(Icons.check_circle, color: AppColors.accent, size: 20),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      feature,
                      style: TextStyle(
                        fontSize: 14,
                        color: AppColors.onSecondary,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                // TODO: Navigate to subscription purchase
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.accent,
                foregroundColor: AppColors.textPrimary,
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text(
                'Upgrade to Pro - \$9.99/month',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProFeaturesSection(BuildContext context) {
    return _buildSection('Pro Features', [
      _buildSettingsItem(
        icon: Icons.restaurant_menu,
        title: 'My Restaurant',
        subtitle: 'Manage your restaurant profile and menu',
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const AddPlaceScreen()),
          );
        },
        trailing: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            color: AppColors.accent,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            'PRO',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
              color: AppColors.textPrimary,
            ),
          ),
        ),
      ),
      _buildSettingsItem(
        icon: Icons.analytics_outlined,
        title: 'Analytics',
        subtitle: 'View your restaurant performance',
        onTap: () {
          // TODO: Navigate to analytics or show upgrade prompt
        },
        trailing: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            color: AppColors.accent,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            'PRO',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
              color: AppColors.textPrimary,
            ),
          ),
        ),
      ),
    ]);
  }

  Widget _buildPreferencesSection() {
    return _buildSection('Preferences', [
      _buildSettingsItem(
        icon: Icons.language,
        title: 'Language',
        subtitle: 'English',
        onTap: () {
          // TODO: Navigate to language settings
        },
      ),
      _buildSettingsItem(
        icon: Icons.location_on_outlined,
        title: 'Location',
        subtitle: 'Manage location preferences',
        onTap: () {
          // TODO: Navigate to location settings
        },
      ),
      _buildSettingsItem(
        icon: Icons.palette_outlined,
        title: 'Theme',
        subtitle: 'Light mode',
        onTap: () {
          // TODO: Navigate to theme settings
        },
      ),
    ]);
  }

  Widget _buildSupportSection() {
    return _buildSection('Support', [
      // _buildSettingsItem(
      //   icon: Icons.help_outline,
      //   title: 'Help Center',
      //   subtitle: 'Get help and support',
      //   onTap: () {
      //     // TODO: Navigate to help center
      //   },
      // ),
      _buildSettingsItem(
        icon: Icons.feedback_outlined,
        title: 'Send Feedback',
        subtitle: 'Help us improve EatOut',
        onTap: () {
          // TODO: Navigate to feedback form
        },
      ),
      _buildSettingsItem(
        icon: Icons.info_outline,
        title: 'About',
        subtitle: 'Version 1.0.0',
        onTap: () {
          // TODO: Show about dialog
        },
      ),
      // _buildSettingsItem(
      //   icon: Icons.logout,
      //   title: 'Sign Out',
      //   subtitle: 'Sign out of your account',
      //   onTap: () {
      //     // TODO: Show sign out confirmation
      //   },
      //   textColor: AppColors.error,
      // ),
    ]);
  }

  Widget _buildSection(String title, List<Widget> children) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: AppColors.textPrimary,
            ),
          ),
        ),
        const SizedBox(height: 12),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color: AppColors.surface,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                blurRadius: 10,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Column(children: children),
        ),
      ],
    );
  }

  Widget _buildSettingsItem({
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
    Widget? trailing,
    Color? textColor,
  }) {
    return ListTile(
      leading: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: (textColor ?? AppColors.primary).withOpacity(0.1),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Icon(icon, color: textColor ?? AppColors.primary, size: 24),
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: textColor ?? AppColors.textPrimary,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(fontSize: 14, color: AppColors.textSecondary),
      ),
      trailing:
          trailing ?? Icon(Icons.chevron_right, color: AppColors.textSecondary),
      onTap: onTap,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    );
  }
}
