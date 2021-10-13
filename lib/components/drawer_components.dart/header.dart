import 'package:flutter/material.dart';
import 'package:instagram_web_redesign/app/constants.dart';

class AppDrawerHeader extends StatelessWidget {
  const AppDrawerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          width: 100,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [
                AppConst.colorOrange,
                AppConst.colorRedOrange,
                AppConst.colorYellow,
              ],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
            ),
          ),
          child: Center(
            child: Container(
              height: 97,
              width: 97,
              decoration: const BoxDecoration(
                color: AppConst.colorGreyDark,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Container(
                  height: 90,
                  width: 90,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/pictures/user.jpg',
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: AppConst.padding * 2),
        const Text('Michaelle Jong'),
        const SizedBox(height: AppConst.padding),
        const Text(
          '@mi-jong',
          style: TextStyle(color: Colors.grey),
        ),
        const SizedBox(height: AppConst.padding * 2),
        SizedBox(
          height: 40,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const HeaderBotInfo(
                title: 'Posts',
                number: '46',
              ),
              VerticalDivider(color: Colors.grey.withOpacity(.3)),
              const HeaderBotInfo(
                title: 'Followers',
                number: '2.8k',
              ),
              VerticalDivider(color: Colors.grey.withOpacity(.3)),
              const HeaderBotInfo(
                title: 'Following',
                number: '458',
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class HeaderBotInfo extends StatelessWidget {
  final String title;
  final String number;

  const HeaderBotInfo({
    Key? key,
    required this.title,
    required this.number,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          number,
        ),
        const SizedBox(height: AppConst.padding),
        Text(
          title,
          style: const TextStyle(
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
