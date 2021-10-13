import 'package:flutter/material.dart';
import 'package:instagram_web_redesign/app/constants.dart';
import 'package:instagram_web_redesign/components/drawer_components.dart/header.dart';
import 'package:instagram_web_redesign/components/drawer_components.dart/logo.dart';
import 'package:instagram_web_redesign/components/drawer_components.dart/menu.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // we have 2 scrolling widget on one screen
    // 1 is drawer, 2. is home feed, so we need to give the controllers
    ScrollController drawerScrollController = ScrollController();

    return Container(
      width: 250,
      height: double.infinity,
      color: AppConst.colorGreyDark,
      padding: const EdgeInsets.symmetric(
        horizontal: AppConst.padding * 1.5,
        vertical: AppConst.padding * 2,
      ),
      child: SingleChildScrollView(
        controller: drawerScrollController,
        child: Column(
          children: const [
            AppDrawerTopLogo(),
            SizedBox(height: AppConst.padding * 2),
            AppDrawerHeader(),
            SizedBox(height: AppConst.padding * 2),
            AppDrawerMenu(),
          ],
        ),
      ),
    );
  }
}
