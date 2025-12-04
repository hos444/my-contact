import 'package:flutter/material.dart';
import 'package:my_conact/Contacts_grid.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class Mycontacts extends StatelessWidget {
  Mycontacts({super.key});

  Map<String, String> socialMedia = {
    'tektok.png': 'https://www.tiktok.com/@_eng_hossam?_r=1&_t=ZS-91rIt8ppE1w',
    'watsapp.png': 'https://wa.me/+201144112445',
    'ins.jpg':
        'https://www.instagram.com/10100110h?igsh=MXNxcWRvcmhxZXZkaQ%3D%3D&utm_source=qr',
    'sm-icons-facebook-logo.webp':
        'https://www.facebook.com/hossam.moustafa.9678',
    'you.png':
        'https://youtube.com/channel/UCPw7_yhXjw_8inx5rdJo4KA?si=nTdaldRMKeS2oRJI',
    'camp.jpg': 'https://www.datacamp.com/portfolio/hoszblak',
    'tell.webp': 'https://t.me/+201144112445',
    'lenked.avif': 'https://www.linkedin.com/in/hossam-mustafa-0b7450260/',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(width: double.infinity, height: 40),
            CircleAvatar(
              backgroundImage: AssetImage('assets/hos.jpg'),
              radius: 130,
            ),
            Text(
              'Call ',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 30,
                fontWeight: FontWeight.bold,
                height: 3,
              ),
            ),
            SizedBox(width: double.infinity),

            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '+201144112445',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,

                    color: Colors.grey,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.phone, size: 30, color: Colors.grey),
                  onPressed: () {
                    launchUrl(Uri.parse('tel:+201144112445'));
                  },
                ),
              ],
            ),
            SizedBox(height: 20),
            ContactsGrid(socialMedia: socialMedia),
          ],
        ),
      ),
    );
  }
}
