import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:podcast/screens/3_subscribe/widgets/podcast_creators.dart';
import 'package:podcast/utils/colors/text_colors.dart';
import 'package:podcast/utils/extension/sized_box.dart';

class SubscribePage extends StatelessWidget {
  List<Map<String, dynamic>> podcastCreators_List = [
    {
      'photoPath': '',
      'podcastCreatorName': 'The Smith Comedy Show',
      'podcastAmount': 685,
      'isSelected': true,
    },
    {
      'photoPath': '',
      'podcastCreatorName': 'The Boy Who Flew Show',
      'podcastAmount': 685,
      'isSelected': false,
    },
    {
      'photoPath': '',
      'podcastCreatorName': 'Community Best Show',
      'podcastAmount': 576,
      'isSelected': true,
    },
    {
      'photoPath': '',
      'podcastCreatorName': 'One Week Wonders Show',
      'podcastAmount': 576,
      'isSelected': false,
    },
    {
      'photoPath': '',
      'podcastCreatorName': 'The Boy Who Lived',
      'podcastAmount': 685,
      'isSelected': true,
    },
  ];

  SubscribePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F7F7),
      appBar: AppBar(
        backgroundColor: Color(0xFFF7F7F7),
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(Icons.arrow_back_ios_new_rounded),
        ),
        title: Text(
          'Subscribe',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            color: Color(0xFF1B153B),
            fontSize: 16.sp,
          ),
        ),
        centerTitle: true,
        actions: [
          PopupMenuButton(
            itemBuilder: (ctx) {
              return [
                PopupMenuItem(
                  onTap: () {},
                  child: Text("Profile"),
                ),
                PopupMenuItem(
                  onTap: () {},
                  child: Text("Settings"),
                ),
                PopupMenuItem(
                  onTap: () {},
                  child: Text("Logout"),
                ),
              ];
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 15.h),
          child: Column(
            children: [
              Text(
                'Subscribe Your Favorite Podcast Authores. Or You can Skip It For Now.',
                style: TextStyle(
                  color: TextColors.secondaryColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
              20.height(),
              Column(
                children: [
                  for (var each in podcastCreators_List)
                    PodcastCreator(
                      photoPath: each['photoPath'],
                      podcastCreatorName: each['podcastCreatorName'],
                      podcastAmount: each['podcastAmount'],
                      isSelected: each['isSelected'],
                    )

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
