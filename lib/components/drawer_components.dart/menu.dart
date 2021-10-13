import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_web_redesign/app/constants.dart';

class AppDrawerMenu extends StatefulWidget {
  const AppDrawerMenu({Key? key}) : super(key: key);

  @override
  _AppDrawerMenuState createState() => _AppDrawerMenuState();
}

class _AppDrawerMenuState extends State<AppDrawerMenu> {
  int _currentSelected = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MenuItem(
          currentIndex: _currentSelected,
          itemIndex: 1,
          title: 'Feed',
          iconUrl: 'assets/pictures/svg_icons/grid.svg',
          onPress: () {
            setState(() {
              _currentSelected = 1;
            });
          },
        ),
        MenuItem(
          currentIndex: _currentSelected,
          itemIndex: 2,
          title: 'Explore',
          iconUrl: 'assets/pictures/svg_icons/search.svg',
          onPress: () {
            setState(() {
              _currentSelected = 2;
            });
          },
        ),
        MenuItem(
          currentIndex: _currentSelected,
          itemIndex: 3,
          title: 'Notifications',
          iconUrl: 'assets/pictures/svg_icons/notification_bell.svg',
          trailing: 4,
          onPress: () {
            setState(() {
              _currentSelected = 3;
            });
          },
        ),
        MenuItem(
          currentIndex: _currentSelected,
          itemIndex: 4,
          title: 'Direct',
          iconUrl: 'assets/pictures/svg_icons/direct_message.svg',
          trailing: 1,
          onPress: () {
            setState(() {
              _currentSelected = 4;
            });
          },
        ),
        MenuItem(
          currentIndex: _currentSelected,
          itemIndex: 5,
          title: 'IG TV',
          iconUrl: 'assets/pictures/svg_icons/igtv.svg',
          onPress: () {
            setState(() {
              _currentSelected = 5;
            });
          },
        ),
        MenuItem(
          currentIndex: _currentSelected,
          itemIndex: 6,
          title: 'Stats',
          iconUrl: 'assets/pictures/svg_icons/statistic.svg',
          onPress: () {
            setState(() {
              _currentSelected = 6;
            });
          },
        ),
        MenuItem(
          currentIndex: _currentSelected,
          itemIndex: 7,
          title: 'Settings',
          iconUrl: 'assets/pictures/svg_icons/settings2.svg',
          onPress: () {
            setState(() {
              _currentSelected = 7;
            });
          },
        ),
        const SizedBox(height: AppConst.padding),
        Divider(color: Colors.grey.withOpacity(.3)),
        MenuItem(
          currentIndex: _currentSelected,
          itemIndex: 8,
          title: 'Logout',
          iconUrl: 'assets/pictures/svg_icons/logout.svg',
          onPress: () {
            setState(() {
              _currentSelected = 8;
            });
          },
        ),
      ],
    );
  }
}

class MenuItem extends StatelessWidget {
  final int currentIndex;
  final int itemIndex;
  final String title;
  final String iconUrl;
  final int? trailing;
  final VoidCallback onPress;

  const MenuItem({
    Key? key,
    required this.currentIndex,
    required this.itemIndex,
    required this.title,
    this.trailing,
    required this.iconUrl,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPress,
      leading: SvgPicture.asset(
        iconUrl,
        height: 18,
        width: 18,
        color:
            currentIndex == itemIndex ? AppConst.colorRedOrange : Colors.white,
      ),
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 14,
        ),
      ),
      trailing: trailing == null
          ? null
          : Text(
              trailing.toString(),
              style: const TextStyle(color: Colors.grey),
            ),
    );
  }
}
