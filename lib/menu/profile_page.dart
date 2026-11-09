import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  static const Color background = Color(0xFF000C18);
  static const Color surface = Color(0xFF001529);
  static const Color accent = Color(0xFF2472C8);
  static const Color text = Color(0xFFD6E4F0);
  static const Color muted = Color(0xFF6688AA);
  static const Color border = Color(0xFF123456);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        title: const Text(
          "Profil Saya",
          style: TextStyle(color: text),
        ),
        centerTitle: true,
        backgroundColor: background,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(height: 10),

            const CircleAvatar(
              radius: 50,
              backgroundColor: accent,
              child: Icon(
                Icons.person,
                size: 60,
                color: text,
              ),
            ),

            const SizedBox(height: 12),

            const Text(
              "Favian",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: text,
              ),
            ),

            const SizedBox(height: 4),

            const Text(
              "Github: @Veeyan",
              style: TextStyle(
                fontSize: 14,
                color: muted,
              ),
            ),

            const SizedBox(height: 24),

            const Divider(color: border),
            const SizedBox(height: 10),

            _buildProfileMenuItem(
              icon: Icons.edit_outlined,
              title: "Edit Profil",
              onTap: () {},
            ),

            _buildProfileMenuItem(
              icon: Icons.history,
              title: "Riwayat",
              onTap: () {},
            ),

            _buildProfileMenuItem(
              icon: Icons.location_on_outlined,
              title: "Alamat",
              onTap: () {},
            ),

            _buildProfileMenuItem(
              icon: Icons.settings_outlined,
              title: "Pengaturan",
              onTap: () {},
            ),

            const SizedBox(height: 10),
            const Divider(color: border),
            const SizedBox(height: 10),

            _buildProfileMenuItem(
              icon: Icons.logout,
              title: "Keluar",
              textColor: Colors.redAccent,
              iconColor: Colors.redAccent,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileMenuItem({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
    Color textColor = text,
    Color iconColor = accent,
  }) {
    return ListTile(
      leading: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: iconColor.withOpacity(0.1),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Icon(icon, color: iconColor),
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: textColor,
        ),
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios_rounded,
        size: 16,
        color: muted,
      ),
      onTap: onTap,
    );
  }
}