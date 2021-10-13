import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_web_redesign/app/constants.dart';
import 'package:instagram_web_redesign/app/screen_size.dart';

class HomeHeader extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const HomeHeader({
    Key? key,
    required this.scaffoldKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenStatus screenStatus = ScreenSize.getScreenStatus(context);

    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: Row(
          children: [
            if (screenStatus == ScreenStatus.mobile)
              IconButton(
                onPressed: () => scaffoldKey.currentState!.openDrawer(),
                icon: const Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
              ),
            if (screenStatus == ScreenStatus.mobile)
              const SizedBox(width: AppConst.padding),
            SizedBox(
              height: 35,
              width: screenStatus == ScreenStatus.mobile ? 100 : 200,
              child: TextField(
                style: const TextStyle(color: Colors.white, fontSize: 12),
                decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: const TextStyle(color: Colors.grey, fontSize: 12),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 0,
                    ),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 0,
                    ),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 0,
                    ),
                  ),
                  fillColor: AppConst.colorGreyDark,
                  filled: true,
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(8),
                    child: SvgPicture.asset(
                      'assets/pictures/svg_icons/search.svg',
                      height: 18,
                      width: 18,
                      color: Colors.white,
                    ),
                  ),
                  contentPadding: const EdgeInsets.only(top: 30),
                ),
              ),
            ),
            const Spacer(),
            Stack(
              children: [
                SvgPicture.asset(
                  'assets/pictures/svg_icons/notification_bell.svg',
                  height: 20,
                  width: 20,
                  color: Colors.white,
                ),
                const Positioned(
                  child: CircleAvatar(
                    backgroundColor: Colors.red,
                    radius: 3,
                  ),
                ),
              ],
            ),
            const SizedBox(width: AppConst.padding * 1.5),
            Stack(
              children: [
                SvgPicture.asset(
                  'assets/pictures/svg_icons/direct_message.svg',
                  height: 20,
                  width: 20,
                  color: Colors.white,
                ),
                const Positioned(
                  child: CircleAvatar(
                    backgroundColor: Colors.red,
                    radius: 3,
                  ),
                ),
              ],
            ),
            const SizedBox(width: AppConst.padding * 1.5),
            Container(
              height: 35,
              padding: const EdgeInsets.symmetric(horizontal: AppConst.padding),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                gradient: const LinearGradient(
                  colors: [
                    AppConst.colorRedOrange,
                    AppConst.colorRedOrange,
                    AppConst.colorRedOrange,
                    AppConst.colorOrange,
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.white24,
                    blurRadius: 10,
                  )
                ],
              ),
              child: Center(
                  child: Row(
                children: const [
                  Icon(
                    Icons.add_circle_outline,
                    color: Colors.white,
                    size: 16,
                  ),
                  SizedBox(width: AppConst.padding),
                  Text(
                    'Add photo',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ],
              )),
            ),
          ],
        ),
      ),
    );
  }
}
