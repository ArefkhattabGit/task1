// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_application_task/app/constant/font_helper.dart';
import 'package:flutter_application_task/app/constant/text_app_helper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant/colors.dart';

class CharacterGuideScreen extends StatefulWidget {
  const CharacterGuideScreen({Key? key}) : super(key: key);

  @override
  State<CharacterGuideScreen> createState() => _CharacterGuideScreenState();
}

class _CharacterGuideScreenState extends State<CharacterGuideScreen>
    with TickerProviderStateMixin {
  late TabController controller;

  final searchNameController = TextEditingController();
  final searchStreetController = TextEditingController();
  final searchNumberController = TextEditingController();

  var key = GlobalKey<FormState>();
  @override
  void initState() {
    controller = TabController(length: 2, vsync: this);

    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
              shape: const Border(bottom: BorderSide.none),
              elevation: 0.0,
              leading: GestureDetector(
                onTap: () => null,
                child: const Icon(
                  Icons.arrow_back_ios,
                  color: blackColor,
                ),
              ),
              title: const Text(TextAppHelper.txt_character_guide)),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.w, 15.h, 16.w, 10.h),
                  child: Container(
                    height: 40.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: customAppBarColor,
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(3),
                      child: TabBar(
                        indicator: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        controller: controller,
                        tabs: const [
                          Tab(
                            text: "قائمة",
                          ),
                          Tab(
                            text: "خريطة",
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                Divider(
                  color: borderColor,
                  height: 0.1.h,
                ),
                SizedBox(height: 20.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        border: Border.all(color: borderColor)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(TextAppHelper.txt_you_can_search,
                              style: FontsAppHelper().avenirArabicBookFont()),

                          SizedBox(
                            height: 10.h,
                          ),
                          //أدخل اسم الحرفة
                          Form(
                            key: key,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                _buildCustomTextFormField(
                                    autofocus: true,
                                    controller: searchNameController,
                                    hint: 'أدخل اسم الحرفة',
                                    type: TextInputType.name,
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return "*هذا الحقل مطلوب ";
                                      }
                                      return null;
                                    }),
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: 15.h, bottom: 20.h),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: _buildCustomTextFormField(
                                            controller: searchStreetController,
                                            hint: 'رقم الشارع',
                                            type: TextInputType.number,
                                            validator: (value) {
                                              if (value!.isEmpty) {
                                                return null;
                                              }
                                              return null;
                                            }),
                                      ),
                                      SizedBox(
                                        width: 15.w,
                                      ),
                                      Expanded(
                                        child: _buildCustomTextFormField(
                                          controller: searchNumberController,
                                          hint: 'رقم المبنى',
                                          type: TextInputType.number,
                                          validator: (value) {
                                            if (value!.isEmpty) {
                                              return null;
                                            }
                                            return null;
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Row(children: [
                            Expanded(child: Container()),
                            SizedBox(
                              width: 15.w,
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12.r),
                                    color: blueColor),
                                child: Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 30.w),
                                  child: TextButton(
                                    onPressed: () {
                                      if (key.currentState!.validate()) {
                                        print('u can start search');
                                      } else {
                                        print('u cant start search');
                                      }
                                    },
                                    child: Text("بحث",
                                        style: FontsAppHelper()
                                            .avenirArabicHeavyFont(
                                                size: 18, color: whiteColor)),
                                  ),
                                ),
                              ),
                            ),
                          ]),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                _buildFilterListView(
                    title: 'صنع نجارة الخشب والخشب المطحون',
                    buildingNumber: '400',
                    streetNumber: '5000'),
                _buildFilterListView(
                    title: 'صنع نجارة الخشب والخشب المطحون',
                    buildingNumber: '400',
                    streetNumber: '5000'),
                _buildFilterListView(
                    title: 'صنع نجارة الخشب والخشب المطحون',
                    buildingNumber: '400',
                    streetNumber: '5000'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFilterListView(
      {required final String title,
      required final String buildingNumber,
      required final String streetNumber}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
      child: Container(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('اسم الحرفة:',
                        style: FontsAppHelper()
                            .avenirArabicMediumFont(color: lightTextColor)),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(title,
                        style: FontsAppHelper().avenirArabicHeavyFont(
                            size: 14, color: blackColor)),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('رقم المبنى:',
                        style: FontsAppHelper()
                            .avenirArabicMediumFont(color: lightTextColor)),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(buildingNumber,
                        style: FontsAppHelper().avenirArabicHeavyFont(
                            size: 14, color: blackColor)),
                    SizedBox(
                      width: 34.w,
                    ),
                    Row(
                      children: [
                        Text('رقم الشارع:',
                            style: FontsAppHelper()
                                .avenirArabicMediumFont(color: lightTextColor)),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(streetNumber,
                            style: FontsAppHelper().avenirArabicHeavyFont(
                                size: 14, color: blackColor)),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        decoration: BoxDecoration(
          border: Border.all(color: borderColor, width: 1),
          borderRadius: BorderRadius.circular(12.r),
        ),
      ),
    );
  }

  Widget _buildCustomTextFormField(
      {required final String hint,
      final TextEditingController? controller,
      final String? Function(String?)? validator,
      final TextInputType? type,
      final Function(String)? onChanged,
      final bool autofocus = false}) {
    return TextFormField(
      autofocus: autofocus,
      controller: controller,
      validator: validator,
      onChanged: onChanged,
      decoration: InputDecoration(
        labelText: hint,
        contentPadding: EdgeInsets.symmetric(vertical: 14.h, horizontal: 20.w),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
        ),
        //fillColor: Colors.green
      ),
      keyboardType: type,
      style: FontsAppHelper().avenirArabicMediumFont(),
    );
  }
}
