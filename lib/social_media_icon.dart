import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
//import 'package:url_launcher/url_launcher.dart';

class SocialMediaIcon extends StatelessWidget {
  final String socialMedia;
  final String socialMediaLink;
  const SocialMediaIcon({super.key,
  required this.socialMedia,
required this.socialMediaLink,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: InkWell(
        child: CircleAvatar(
          backgroundColor: Colors.white,
          backgroundImage: AssetImage('assets/$socialMedia'),
          radius: 50,
        ),
        onTap: () {
        launchUrl(Uri.parse(socialMediaLink),mode:LaunchMode.externalApplication );
        },
      ),
    );
  }
}
