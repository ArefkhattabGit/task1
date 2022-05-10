import 'package:flutter/material.dart';
import 'package:flutter_application_task/app/constant/font_helper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant/colors.dart';
import '../constant/text_app_helper.dart';

class MyBillScreen extends StatefulWidget {
  const MyBillScreen({Key? key}) : super(key: key);

  @override
  State<MyBillScreen> createState() => _MyBillScreenState();
}

class _MyBillScreenState extends State<MyBillScreen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
            elevation: 0.0,
            leading: GestureDetector(
              onTap: () => null,
              child: const Icon(
                Icons.arrow_back_ios,
                color: blackColor,
              ),
            ),
            title: const Text(TextAppHelper.txt_my_bill)),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: dividerColor, width: 1),
                      borderRadius: BorderRadius.circular(12.r)),
                  child: Column(children: [
                    // when data come from api use list view separated and remove all copy of _buildBillTable.

                    _buildBillTable(
                        baseTitle: 'رقم الاشتراك',
                        title: '52454',
                        baseTitleStyle: FontsAppHelper()
                            .avenirArabicMediumFont(color: tableColor),
                        titleStyle: FontsAppHelper().avenirArabicHeavyFont(
                            size: 14, color: blackColor)),
                    const Divider(
                      color: dividerColor,
                      height: 1,
                      endIndent: 10,
                      indent: 10,
                    ),
                    _buildBillTable(
                        baseTitle: 'اسم المشترك',
                        title: 'محمد أحمد محمود عبدالرحمن',
                        baseTitleStyle: FontsAppHelper()
                            .avenirArabicMediumFont(color: tableColor),
                        titleStyle: FontsAppHelper().avenirArabicHeavyFont(
                            size: 14, color: blackColor)),
                    const Divider(
                      color: dividerColor,
                      height: 1,
                      endIndent: 10,
                      indent: 10,
                    ),
                    _buildBillTable(
                        baseTitle: 'تاريخ الاحتساب',
                        title: '31/01/2022',
                        baseTitleStyle: FontsAppHelper()
                            .avenirArabicMediumFont(color: tableColor),
                        titleStyle: FontsAppHelper().avenirArabicHeavyFont(
                            size: 14, color: blackColor)),
                    const Divider(
                      color: dividerColor,
                      height: 1,
                      endIndent: 10,
                      indent: 10,
                    ),
                    _buildBillTable(
                        baseTitle: 'كمية الاستهلاك',
                        title: '25',
                        baseTitleStyle: FontsAppHelper()
                            .avenirArabicMediumFont(color: tableColor),
                        titleStyle: FontsAppHelper().avenirArabicHeavyFont(
                            size: 14, color: blackColor)),
                    const Divider(
                      color: dividerColor,
                      height: 1,
                      endIndent: 10,
                      indent: 10,
                    ),
                    _buildBillTable(
                        baseTitle: 'ثمن المياه',
                        title: '25',
                        baseTitleStyle: FontsAppHelper()
                            .avenirArabicMediumFont(color: tableColor),
                        titleStyle: FontsAppHelper().avenirArabicHeavyFont(
                            size: 14, color: blackColor)),
                    const Divider(
                      color: dividerColor,
                      height: 1,
                      endIndent: 10,
                      indent: 10,
                    ),
                    _buildBillTable(
                        baseTitle: 'أملاك',
                        title: '0',
                        baseTitleStyle: FontsAppHelper()
                            .avenirArabicMediumFont(color: tableColor),
                        titleStyle: FontsAppHelper().avenirArabicHeavyFont(
                            size: 14, color: blackColor)),
                    const Divider(
                      color: dividerColor,
                      height: 1,
                      endIndent: 10,
                      indent: 10,
                    ),
                    _buildBillTable(
                        baseTitle: 'منازل',
                        title: '0',
                        baseTitleStyle: FontsAppHelper()
                            .avenirArabicMediumFont(color: tableColor),
                        titleStyle: FontsAppHelper().avenirArabicHeavyFont(
                            size: 14, color: blackColor)),
                    const Divider(
                      color: dividerColor,
                      height: 1,
                      endIndent: 10,
                      indent: 10,
                    ),
                    _buildBillTable(
                        baseTitle: 'نظافة',
                        title: '0',
                        baseTitleStyle: FontsAppHelper()
                            .avenirArabicMediumFont(color: tableColor),
                        titleStyle: FontsAppHelper().avenirArabicHeavyFont(
                            size: 14, color: blackColor)),
                    const Divider(
                      color: dividerColor,
                      height: 1,
                      endIndent: 10,
                      indent: 10,
                    ),
                    _buildBillTable(
                        baseTitle: 'فئران',
                        title: '1',
                        baseTitleStyle: FontsAppHelper()
                            .avenirArabicMediumFont(color: tableColor),
                        titleStyle: FontsAppHelper().avenirArabicHeavyFont(
                            size: 14, color: blackColor)),
                    const Divider(
                      color: dividerColor,
                      height: 1,
                      endIndent: 10,
                      indent: 10,
                    ),
                    _buildBillTable(
                        baseTitle: 'صرف صحي',
                        title: '10.25',
                        baseTitleStyle: FontsAppHelper()
                            .avenirArabicMediumFont(color: tableColor),
                        titleStyle: FontsAppHelper().avenirArabicHeavyFont(
                            size: 14, color: blackColor)),
                    const Divider(
                      color: dividerColor,
                      height: 1,
                      endIndent: 10,
                      indent: 10,
                    ),
                    _buildBillTable(
                        baseTitle: 'متأخرات',
                        title: '634.65',
                        baseTitleStyle: FontsAppHelper()
                            .avenirArabicMediumFont(color: tableColor),
                        titleStyle: FontsAppHelper().avenirArabicHeavyFont(
                            size: 14, color: blackColor)),
                    const Divider(
                      color: dividerColor,
                      height: 1,
                      endIndent: 10,
                      indent: 10,
                    ),
                    _buildBillTable(
                        baseTitle: 'إجمالي الفاتورة',
                        title: '5871.89',
                        baseTitleStyle: FontsAppHelper()
                            .avenirArabicHeavyFont(size: 14, color: blueColor),
                        titleStyle: FontsAppHelper()
                            .avenirArabicHeavyFont(size: 14, color: blueColor)),
                  ]),
                ),
                SizedBox(
                  height: 33.h,
                ),
                Column(
                  children: [
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          color: blueColor),
                      child: TextButton(
                        onPressed: () {},
                        child: Text("فواتير سابقة",
                            style: FontsAppHelper().avenirArabicHeavyFont(
                                size: 18, color: whiteColor)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBillTable({
    required final String baseTitle,
    required final String title,
    required final TextStyle baseTitleStyle,
    required final TextStyle titleStyle,
  }) {
    return Table(
      border: TableBorder.symmetric(
        inside: const BorderSide(width: 1, color: dividerColor),
      ),
      columnWidths: const {
        0: FlexColumnWidth(2.5),
        1: FlexColumnWidth(4),
      },
      children: [
        TableRow(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
              child: Text(
                baseTitle,
                style: baseTitleStyle,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
              child: Text(title, style: titleStyle),
            ),
          ],
        ),
      ],
    );
  }
}
