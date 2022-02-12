import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/foundation.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final isLargeScreen = screenSize.width > 640;

    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/profile.jpg'),
            ),
            const SizedBox(height: 16),
            Text(
              'Marcelo Montanher',
              style: GoogleFonts.indieFlower(
                fontSize: 26,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            isLargeScreen
                ? Row(
                    children: const [
                      Expanded(
                        child: InfoItem(
                          text: '11 12345-6789',
                          icon: Icons.phone,
                        ),
                      ),
                      Expanded(
                        child: InfoItem(
                          text: 'email@gmail.com',
                          icon: Icons.email,
                        ),
                      ),
                    ],
                  )
                : Column(
                    children: [
                      InfoItem(
                        text: '11 12345-6789',
                        icon: kIsWeb
                            ? Icons.phone
                            : (Platform.isAndroid)
                                ? Icons.phone_android
                                : Icons.phone_iphone,
                      ),
                      const SizedBox(height: 16),
                      const InfoItem(
                        text: 'email@gmail.com',
                        icon: Icons.email,
                      ),
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}

class InfoItem extends StatelessWidget {
  const InfoItem({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Material(
        borderRadius: const BorderRadius.all(Radius.circular(1000)),
        color: Colors.white,
        elevation: 8,
        child: ListTile(
          leading: Icon(
            icon,
            color: Colors.teal,
          ),
          title: Text(
            text,
            style: const TextStyle(
              color: Colors.teal,
            ),
          ),
        ),
      ),
    );
  }
}
