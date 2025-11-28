


import 'package:flutter/material.dart';

class SocialMediaIcon extends StatelessWidget {
  final String socialMedia;
  const SocialMediaIcon({super.key, required this.socialMedia});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: CircleAvatar(
        backgroundColor: Colors.white,
        backgroundImage: AssetImage('assets/$socialMedia'),
        radius: 50,
      ),
    );
  }
}