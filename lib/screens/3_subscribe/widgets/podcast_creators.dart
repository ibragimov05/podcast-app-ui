import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PodcastCreator extends StatelessWidget {
  final dynamic photoPath;
  final String podcastCreatorName;
  final int podcastAmount;
  final bool isSelected;

  PodcastCreator({
    super.key,
    required this.photoPath,
    required this.podcastCreatorName,
    required this.podcastAmount,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.h),
      height: 30.h,
      width: double.infinity.w,
      decoration: BoxDecoration(
        color: Colors.yellow,
      ),
    );
  }
}
