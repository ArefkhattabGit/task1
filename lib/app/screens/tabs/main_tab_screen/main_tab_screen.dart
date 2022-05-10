import 'package:flutter/material.dart';
import 'package:flutter_application_task/app/screens/tabs/establishment_municipality.dart';

import '../../../constant/colors.dart';
import '../council _sessions.dart';

class MainTabScreen extends StatefulWidget {
  const MainTabScreen({Key? key}) : super(key: key);

  @override
  State<MainTabScreen> createState() => _MainTabScreenState();
}

class _MainTabScreenState extends State<MainTabScreen>
    with TickerProviderStateMixin {
  late TabController controller;

  List<String> titles = [
    'البلدية في سطور',
    'المجلس البلدي',
  ];
  late String currentTitle;

  @override
  void initState() {
    currentTitle = titles[0];
    controller = TabController(length: 2, vsync: this);
    controller.addListener(changeTitle);

    super.initState();
  }

  void changeTitle() {
    setState(() {
      currentTitle = titles[controller.index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            actions: const [
              Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
            ],
            leading: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: const Icon(
                Icons.arrow_back_ios,
                color: blackColor,
              ),
            ),
            title: Text(currentTitle),
          ),
          body: Column(
            children: [
              TabBar(
                controller: controller,
                indicator: const BoxDecoration(
                  color: blueColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(100),
                  ),
                ),
                indicatorPadding: const EdgeInsetsDirectional.only(
                    top: 40, start: 50, end: 50),
                indicatorWeight: 0.1,
                tabs: const [
                  Tab(
                    text: "نشأة البلدية",
                  ),
                  Tab(
                    text: "جلسات المجلس",
                  ),
                ],
              ),
              const Divider(
                color: dividerColor,
                height: 2,
              ),
              Expanded(
                child: TabBarView(
                  controller: controller,
                  children: const [
                    EstablishmentMunicipalityScreen(),
                    CouncilSessionsScreen(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
