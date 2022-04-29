// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_task/app/constant/colors.dart';
import 'package:flutter_application_task/app/constant/font_helper.dart';
import 'package:flutter_application_task/app/constant/pathes.dart';
import 'package:flutter_application_task/app/constant/text_app_helper.dart';
import 'package:flutter_application_task/app/model/first_list_model.dart';
import 'package:flutter_application_task/app/model/user_members.dart';
// ignore: implementation_imports
import 'package:flutter_screenutil/src/size_extension.dart';
import 'package:flutter_svg/svg.dart';

class CouncilSessionsScreen extends StatelessWidget {
  const CouncilSessionsScreen({Key? key}) : super(key: key);

  static List<UserMembers> models = [
    UserMembers(AppImagesHelper.ic_personMember, 'أ. د. يحيى رشدي  السراج',
        'رئيس بلدية غزة'),
    UserMembers(
        AppImagesHelper.ic_personMember, 'م. هاشم عرفة سكيك', 'عضو مجلس بلدي'),
    UserMembers(AppImagesHelper.ic_personMember, 'د. جميل سليمان طرزي',
        'عضو مجلس بلدي'),
    UserMembers(AppImagesHelper.ic_personMember, 'أ. فداء محسن المدهون',
        'عضو مجلس بلدي'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              _buildTextFieldItem(hint: 'بحث برقم الجلسة'),
              SizedBox(
                height: 20.h,
              ),
              _buildListViewItem(members: models),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildTextFieldItem({
  required final String hint,
  final TextEditingController? controller,
  final String? Function(String?)? validator,
  final TextInputType? type,
}) {
  return Padding(
    padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
    child: Container(
      height: 50.h,
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: TextFormField(
              validator: validator,
              keyboardType: type,
              controller: controller,
              decoration: InputDecoration(
                  prefixIcon: Container(
                    width: 10.w,
                    height: 10.h,
                    child: SvgPicture.asset(
                      AppImagesHelper.ic_search,
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                    borderSide:
                        const BorderSide(color: Colors.transparent, width: 0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                    borderSide:
                        const BorderSide(color: Colors.transparent, width: 0),
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 7.h),
                  filled: true,
                  fillColor: stackColor,
                  hintText: hint,
                  hintStyle: FontsAppHelper()
                      .avenirArabicMediumFont(color: hintColor)),
            ),
          ),
          SizedBox(
            width: 9.w,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              color: stackColor,
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 13.w, vertical: 12.h),
              child: SvgPicture.asset(AppImagesHelper.ic_calendar),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget _buildListViewItem({required final List<UserMembers> members}) {
  return Column(
    children: [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'جلسة رقم 19/2022',
            maxLines: 1,
            style: FontsAppHelper().avenirArabicMediumFont(color: blueColor),
          ),
          Text(
            'مجلس بلدية غزة يناقش مع نشطاء شباب جهود دعم المبادرات الشبابية.',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: FontsAppHelper().avenirArabicHeavyFont(size: 16),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            'القرارات الصادرة عن الجلسة:',
            maxLines: 1,
            style: FontsAppHelper().avenirArabicMediumFont(),
          ),
          SizedBox(
            height: 5.h,
          ),
          Container(
            width: double.infinity,
            child: ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => Row(
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.only(bottom: 20),
                    child: Container(
                      width: 7.w,
                      height: 7.h,
                      decoration: BoxDecoration(
                        border: Border.all(color: blackColor, width: 1.5),
                        borderRadius: BorderRadiusDirectional.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Flexible(
                    child: Text(
                      FirstListModel.models[index],
                      style: FontsAppHelper().avenirArabicBookFont(size: 14),
                    ),
                  ),
                ],
              ),
              itemCount: FirstListModel.models.length,
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Text(
            TextAppHelper.txt_persons_member,
            style: FontsAppHelper().avenirArabicHeavyFont(size: 14),
          ),
          SizedBox(
            height: 8.h,
          ),
        ]),
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.w),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: EdgeInsets.zero,
                height: 180.h,
                child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  separatorBuilder: (context, index) => Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
                    child: Divider(
                      height: 1.h,
                      color: dividerColor,
                    ),
                  ),
                  itemBuilder: (context, index) => Container(
                    width: 56.w,
                    height: 56.h,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          backgroundColor: whiteColor,
                          radius: 40.0.r,
                          child: Image.asset(
                            members[index].userImage.toString(),
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Container(
                          padding: EdgeInsetsDirectional.only(top: 3.sp),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                members[index].userName,
                                style: FontsAppHelper()
                                    .avenirArabicHeavyFont(size: 14),
                              ),
                              Text(
                                members[index].currentRank,
                                style: FontsAppHelper().avenirArabicMediumFont(
                                    color: lightTextColor),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  itemCount: members.length,
                ),
              ),
            ]),
      ),
    ],
  );
}
