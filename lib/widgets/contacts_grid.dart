import 'package:flutter/material.dart';
import 'social_media_icons.dart';
import '../start.dart';
import 'package:url_launcher/url_launcher.dart';

class ContctsGrid extends StatelessWidget {
    const ContctsGrid ({
        super.key,
        required this.MyContacts,
    });
    final Map MyContacts;
    @override
    Widget build(BuildContext context ){
  var socialMedia;
  return GridView.builder(
                itemCount: socialMedia.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                   itemBuilder: ( mycontext, index){
                    
                
                    return SocialMediaIcon(socialMedia: socialMedia.keys.toList()[index], socialMediaLinks:socialMedia.values.toList()[index] ,);
                    
                   },
                   shrinkWrap: true,
                   physics: NeverScrollableScrollPhysics(),
                   padding: EdgeInsets.all(20),
              );
              }
              }
