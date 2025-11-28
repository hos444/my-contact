import 'package:flutter/material.dart';
import 'package:my_conact/social_media_icon.dart';

// ignore: must_be_immutable
class Mycontacts extends StatelessWidget {
  Mycontacts({super.key});
  List<String> socialmedis = [
    'ins.jpg',
    'lenked.avif',
    'sm-icons-facebook-logo.webp',
    'tektok.png',
    'watsapp.png',
    'you.png',
    'camp.jpg',
    'tell.webp',
   
  ];
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
              backgroundImage: AssetImage('assets/images.png'),
              radius: 130,
            ),
            Text(
              'Call Us',
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
                  '01144112445',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
        
                    color: Colors.grey,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.phone, size: 30, color: Colors.grey),
                  onPressed: () {
                    print('icon is pressed');
                  },
                ),
              ],
            ),
            SizedBox(height: 20),
            GridView.builder(
              itemCount: socialmedis.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemBuilder: (context, index) {
                return SocialMediaIcon(socialMedia: socialmedis[index]);
              },
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.all(20),
            ),
          ],
        ),
      ),
    );
  }
}
