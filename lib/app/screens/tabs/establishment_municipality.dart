import 'package:flutter/material.dart';
import 'package:flutter_application_task/app/constant/font_helper.dart';
import 'package:flutter_application_task/app/constant/text_app_helper.dart';
import 'package:flutter_application_task/app/model/establishment_model.dart';
// ignore: implementation_imports
import 'package:flutter_screenutil/src/size_extension.dart';

class EstablishmentMunicipalityScreen extends StatelessWidget {
  const EstablishmentMunicipalityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildFirstListViewTabItem(model: EstablishmentModel.models);
  }
}

Widget _buildFirstListViewTabItem({required final List<String> model}) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(TextAppHelper.txt_documentation_about,
              style: FontsAppHelper().avenirArabicHeavyFont(size: 16)),
          SizedBox(
            height: 9.sp,
          ),
          Text(
            model.toString(),
            style: FontsAppHelper().avenirArabicBookFont(),
          ),
        ],
      ),
    ),
  );
}
