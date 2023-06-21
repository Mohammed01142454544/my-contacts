import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:mynetwork_app/widgets/contacts_grid.dart';

class MyContacts extends StatelessWidget {
  MyContacts({super.key});
  Map<String,String> socialMedia = {
     'logo-facebookpng-32202.png'  :  'https://ar-ar.facebook.com/',
     'whatsapp-logo-png-2261.png'  :  'https://wa.me/+01142454544',
     'youtube-logo-png-2071.png'   :  'https://www.youtube.com/',
     'logo-ig-png-32466.png'      :  'https://www.instagram.com/',
     'logo-twitter-png-5859.png'   :  'https://twitter.com/?lang=ar',
     'snapchat-logo-png-1456.png'  :  'https://www.snapchat.com/',
  };
 
  @override
  Widget build(BuildContext mycontext) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 3, 7, 30),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               SizedBox(
                height: 80,
               ),
              CircleAvatar(
                backgroundImage: AssetImage('assets/Mohammed.png'),
                radius: 100,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Mohammed mahmoed',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                //mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '+01142454544',
                    style: TextStyle(fontSize: 25, color: Colors.grey),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.phone,
                      size: 30,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                     launchUrl(Uri.parse('tel:+01142454544'));
                    },
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              ContctsGrid(MyContacts: MyContacts),
            ],
          ),
        ),
      ),
    );
  }
}
