import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:podcast/screens/2_popular_show/widgets/icon_maker.dart';
import 'package:podcast/screens/2_popular_show/widgets/popular_show_widget_maker.dart';
import 'package:podcast/screens/3_subscribe/subscribe.dart';
import 'package:podcast/utils/assets/image_directions.dart';
import 'package:podcast/utils/extension/sized_box.dart';
import 'package:podcast/utils/fonts/styles.dart';
import 'package:podcast/utils/widgets/button_maker.dart';

class PopularShow extends StatelessWidget {
  List<Map<String, dynamic>> popularShow_ls = [
    {
      'imageDirection': Assets.imagePodcastBackground,
      'podcastName': 'Enjoy',
      'podcastType': 'Socially Buzzed',
    },
    {
      'imageDirection': Assets.imageWomenTalk,
      'podcastName': 'Women Talk',
      'podcastType': 'Entertainment',
    },
    {
      'imageDirection': Assets.imageComeAlive,
      'podcastName': 'Come Alive',
      'podcastType': 'Nationality',
    },
  ];

  PopularShow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F7F7),

      /// app bar
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        // foregroundColor: Colors.transparent,
        backgroundColor: Color(0xFFF7F7F7),
        title: Text(
          'Popular Show',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            color: Color(0xFF1B153B),
            fontSize: 16.sp,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 15.h),
          child: Column(
            children: [
              /// main podcast photo
              Container(
                width: double.infinity,
                height: 300.h,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(40.r),
                  image: DecorationImage(
                    image: AssetImage(
                      Assets.imagePodcastBackground,
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Center(
                  child: Container(
                    width: 30.w,
                    height: 30.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          blurStyle: BlurStyle.outer,
                          spreadRadius: 10,
                          blurRadius: 50,
                        ),
                      ],
                    ),
                    child: Icon(Icons.play_arrow_rounded),
                  ),
                ),
              ),
              35.height(),

              /// play all show and subscribe buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ButtonMaker(text: 'Play All Show', isSelected: true),
                  ButtonMaker(
                    text: 'Subscribe',
                    isSelected: false,
                    nextPageName: SubscribePage(),
                  ),
                ],
              ),

              30.height(),

              /// row text: 12 popular show
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '12 Popular show',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF1B153B),
                      fontSize: 18.sp,
                    ),
                  ),
                  Text('See all', style: AppTextStyles.mainBold),
                ],
              ),

              20.height(),
              Column(
                children: [
                  for (var each in popularShow_ls)
                    PopularShowWidget(
                      imageDirection: each['imageDirection'],
                      podcastName: each['podcastName'],
                      podcastType: each['podcastType'],
                    ),
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.r),
          topRight: Radius.circular(20.r),
        ),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: IconMaker(icoPath: Assets.iconHome),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: IconMaker(icoPath: Assets.iconCategory),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: IconMaker(icoPath: Assets.iconPlaylist),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: IconMaker(icoPath: Assets.iconUser),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
