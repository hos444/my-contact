import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class StartCoialMedia extends StatelessWidget {
  final String socialMediaLink;
  const StartCoialMedia({super.key, required this.socialMediaLink});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: const Color.fromARGB(255, 51, 226, 124)),
      body: Center(
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor:WidgetStateProperty.all(const Color.fromARGB(255, 51, 226, 124))

          ),
          onPressed: () {
            launchUrl(
              Uri.parse(socialMediaLink),
              mode: LaunchMode.externalApplication,
            );
          },
          child: Text('atartsoialmedia'),
        ),
      ),
    );
  }
}
