import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../start.dart';

class SocialMediaIcon extends StatelessWidget {
  String socialMedia;
  String socialMediaLinks;
  String platform;
  Uri url;
  SocialMediaIcon({
    super.key,
    required this.socialMedia,
    required this.socialMediaLinks,
     required this.platform,
     required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: InkWell(
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/$socialMedia'),
          radius: 40,
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) =>  StartSocialMedia (url: url,)),
          );
        },
      ),
    );
  }
}
