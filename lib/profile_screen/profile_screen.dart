import 'package:flutter/material.dart';
import 'package:flutter_apps/login/login_screen.dart';

import '../widgets/profile_item.dart';

class ProfileScrean extends StatefulWidget {
  const ProfileScrean({super.key});

  @override
  State<ProfileScrean> createState() => _ProfileScreanState();
}

class _ProfileScreanState extends State<ProfileScrean> {
  bool switchDefaultValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Color(0xffFF5E00),
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 18),
          ProfileItem(startIcon: Icons.person, text: 'Edit Profile'),
          ProfileItem(startIcon: Icons.key, text: 'Change Password'),
          ProfileItem(startIcon: Icons.wallet, text: 'My Cards'),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            child: Text(
              'App Settings',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Color(0xffFF5E00),
              ),
            ),
          ),
          SwitchListTile(
            contentPadding:
                EdgeInsets.zero, // عشان تظبط المسافات مع باقي العناصر
            secondary: const Icon(
              Icons.notifications,
              color: Color(0xFF6D3805), // لون الأيقونة البني
            ),
            title: const Text(
              'Notifications',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black87,
              ),
            ),
            activeColor: Colors.white, // لون الدائرة لما يكون شغال
            activeTrackColor: const Color(0xFFFF5E00), // لون الخلفية البرتقالي
            value: switchDefaultValue,
            onChanged: (value) {
              setState(() {
                switchDefaultValue = value;
              });
            },
          ),

          ProfileItem(
            startIcon: Icons.language,
            text: 'Language',
            endIcon: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('English'),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xff804F1E),
                  size: 20,
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
            },
            child: ProfileItem(
              startIcon: Icons.logout,
              text: 'Logout',
              endIcon: const SizedBox(),
            ),
          ),
        ],
      ),
    );
  }
}
