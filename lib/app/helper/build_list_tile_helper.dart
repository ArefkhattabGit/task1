import 'package:flutter/material.dart';
import 'package:flutter_application_task/app/constant/font_helper.dart';
import 'package:flutter_application_task/app/model/list_tile_model.dart';
// ignore: implementation_imports
import 'package:flutter_screenutil/src/size_extension.dart';

import 'package:flutter_svg/svg.dart';

import '../constant/colors.dart';

class AboutWidgetHelper extends StatelessWidget {
  final ListTileModel model;
  final Function()? onTap;

  const AboutWidgetHelper({Key? key, required this.model, this.onTap})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
      child: Column(
        children: [
          ListTile(
            onTap: onTap,
            leading: Stack(
              children: [
                Container(
                  width: 36.w,
                  height: 36.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    color: stackColor,
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
                    child: SvgPicture.asset(model.iconPath.toString()),
                  ),
                ),
              ],
            ),
            title: Text(
              model.title.toString(),
              style: FontsAppHelper().avenirArabicHeavyFont(size: 14),
            ),
            trailing: Icon(
              Icons.arrow_back_ios_new,
              size: 14.sp,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
