import 'package:flutter/material.dart';
import 'package:flutter_application_task/app/constant/colors.dart';
import 'package:flutter_application_task/app/constant/pathes.dart';
import 'package:flutter_application_task/app/constant/text_app_helper.dart';
import 'package:flutter_application_task/app/helper/build_list_tile_helper.dart';
import 'package:flutter_application_task/app/model/list_tile_model.dart';
import 'package:flutter_application_task/app/screens/tabs/main_tab_screen/main_tab_screen.dart';
import 'package:flutter_screenutil/src/size_extension.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  static List<ListTileModel> models = [
    ListTileModel(
        title: TextAppHelper.txt_municipality_in_brief,
        iconPath: AppImagesHelper.ic_line,
        enumAbout: AboutEnum.MUNICIOALITY_INB_BRIEF),
    ListTileModel(
        title: TextAppHelper.txt_town_council,
        iconPath: AppImagesHelper.ic_multiUser,
        enumAbout: AboutEnum.TOWN_COUNCIL),
    ListTileModel(
        title: TextAppHelper.txt_municipal_administration,
        iconPath: AppImagesHelper.ic_singleUser,
        enumAbout: AboutEnum.MUNICIOALITY_ADMINISTRATION),
    ListTileModel(
        title: TextAppHelper.txt_municipal_facilities,
        iconPath: AppImagesHelper.ic_home,
        enumAbout: AboutEnum.MUNICIOALITY_FACILITIES),
    ListTileModel(
        title: TextAppHelper.txt_staff_phones,
        iconPath: AppImagesHelper.ic_phone,
        enumAbout: AboutEnum.STAFF_PHONES),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          TextAppHelper.txt_about,
        ),
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Divider(
            height: 0.2.h,
            color: dividerColor,
          ),
        ),
        itemBuilder: (context, index) => AboutWidgetHelper(
          model: models[index],
          onTap: () => handleEnumIndexModel(models, index, context),
        ),
        itemCount: models.length,
      ),
    );
  }
}

handleEnumIndexModel(final List<ListTileModel> models, final int index,
    final BuildContext context) {
  switch (models[index].enumAbout) {
    case AboutEnum.MUNICIOALITY_INB_BRIEF:
      Navigator.push(
          context, MaterialPageRoute(builder: (_) => const MainTabScreen()));
      break;
    case AboutEnum.TOWN_COUNCIL:
      // TODO: Handle this case.
      break;
    case AboutEnum.MUNICIOALITY_ADMINISTRATION:
      // TODO: Handle this case.
      break;
    case AboutEnum.MUNICIOALITY_FACILITIES:
      // TODO: Handle this case.
      break;
    case AboutEnum.STAFF_PHONES:
      // TODO: Handle this case.
      break;
  }
}
