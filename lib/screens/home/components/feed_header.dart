import 'package:flutter/material.dart';
import 'package:instagram_web_redesign/app/constants.dart';

class FeedHeader extends StatelessWidget {
  const FeedHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppConst.padding * 2),
        child: Row(
          children: [
            const Text('Feed'),
            const Spacer(),
            Row(
              children: [
                TextButton(
                  child: const Text(
                    'Latest',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {},
                ),
                TextButton(
                  child: const Text(
                    'Popular',
                    style: TextStyle(color: Colors.grey),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
