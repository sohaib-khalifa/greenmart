import 'package:flutter/material.dart';
import 'package:greenmart/core/constants/app_images.dart';
import 'package:greenmart/core/functions/navigation.dart';
import 'package:greenmart/core/styles/color.dart';
import 'package:greenmart/features/account/data/account_menu_item_model.dart';
import 'package:greenmart/features/account/widgets/account_menu_tile.dart';
import 'package:greenmart/features/auth/screens/login_screen.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  static const List<AccountMenuItem> _menuItems = [
    AccountMenuItem(icon: Icons.shopping_bag_outlined, title: 'Orders'),
    AccountMenuItem(icon: Icons.badge_outlined, title: 'My Details'),
    AccountMenuItem(
      icon: Icons.location_on_outlined,
      title: 'Delivery Address',
    ),
    AccountMenuItem(icon: Icons.credit_card_outlined, title: 'Payment Methods'),
    AccountMenuItem(icon: Icons.local_offer_outlined, title: 'Promo Cord'),
    AccountMenuItem(icon: Icons.notifications_outlined, title: 'Notifecations'),
    AccountMenuItem(icon: Icons.help_outline, title: 'Help'),
    AccountMenuItem(icon: Icons.info_outline, title: 'About'),
    //
    // AccountMenuItem(icon: Icons.credit_card_outlined, title: 'Payment Methods'),
    // AccountMenuItem(icon: Icons.local_offer_outlined, title: 'Promo Cord'),
    // AccountMenuItem(icon: Icons.notifications_outlined, title: 'Notifecations'),
    // AccountMenuItem(icon: Icons.help_outline, title: 'Help'),
    // AccountMenuItem(icon: Icons.info_outline, title: 'About'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // ── Profile Header ──
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
              child: Row(
                children: [
                  // Avatar
                  Container(
                    width: 72,
                    height: 72,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.grey.shade200, width: 2),
                      image: const DecorationImage(
                        image: AssetImage(AppImages.profile),
                        // image: NetworkImage('https://i.pravatar.cc/150?img=11'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  // Name & Email
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Text(
                              'Sohaib Hisham',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.black87,
                              ),
                            ),
                            const SizedBox(width: 8),
                            Icon(
                              Icons.edit_outlined,
                              size: 18,
                              color: AppColors.primaryColor,
                            ),
                          ],
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          'sohaib@gmail.com',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // ── Divider ──
            Divider(color: Colors.grey.shade200, height: 1),

            // ── Menu Items ──
            Expanded(
              child: ListView.separated(
                // physics: const NeverScrollableScrollPhysics(),
                // shrinkWrap: true,
                itemCount: _menuItems.length,
                separatorBuilder: (context, index) =>
                    Divider(color: Colors.grey.shade200, height: 1),
                itemBuilder: (context, index) {
                  final item = _menuItems[index];
                  return AccountMenuTile(item: item);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 60),
                  backgroundColor: const Color(0xFFF2F3F2),
                  elevation: 0,

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                onPressed: () {
                  pushAndRemoveUntilAll(context, const LoginScreen());
                },
                icon: Icon(Icons.logout, color: AppColors.primaryColor),
                label: const Text(
                  'Log Out',
                  style: TextStyle(
                    color: AppColors.primaryColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
