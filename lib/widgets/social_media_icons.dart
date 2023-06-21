


import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaIcon extends StatelessWidget {
  String socialMedia;
  String socialMediaLinks;
  SocialMediaIcon({
    super.key,
    required this.socialMedia,
    required this.socialMediaLinks,
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
          launchUrl(Uri.parse(socialMediaLinks), mode: LaunchMode.externalApplication);
        },
      ),
    );
  }
}