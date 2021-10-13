import 'package:flutter/material.dart';
import 'package:instagram_web_redesign/app/constants.dart';
import 'package:instagram_web_redesign/app/screen_size.dart';
import 'package:instagram_web_redesign/components/drawer.dart';

import 'components/home_header.dart';
import 'components/story_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    ScrollController homeScrollController = ScrollController();
    ScreenStatus screenStatus = ScreenSize.getScreenStatus(context);

    return Scaffold(
      key: _scaffoldKey,
      drawer: const AppDrawer(),
      body: Row(
        children: [
          if (screenStatus != ScreenStatus.mobile) const AppDrawer(),
          Expanded(
            child: CustomScrollView(
              controller: homeScrollController,
              slivers: [
                HomeHeader(
                  scaffoldKey: _scaffoldKey,
                ),
                const SliverToBoxAdapter(
                  child: SizedBox(height: AppConst.padding * 4),
                ),
                const HomeStoryList(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
