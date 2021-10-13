import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:instagram_web_redesign/app/constants.dart';
import 'package:instagram_web_redesign/app/screen_size.dart';
import 'package:instagram_web_redesign/data/dummy_posts_list.dart';
import 'package:instagram_web_redesign/models/post.dart';

class HomeFeed extends StatelessWidget {
  const HomeFeed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenStatus screenStatus = ScreenSize.getScreenStatus(context);
    return SliverPadding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppConst.padding * 2,
      ),
      sliver: SliverStaggeredGrid.countBuilder(
        staggeredTileBuilder: (index) => const StaggeredTile.fit(1),
        crossAxisCount: _getCountForScreenType(screenStatus),
        crossAxisSpacing: AppConst.padding,
        mainAxisSpacing: AppConst.padding,
        itemCount: dummyPosts.length,
        itemBuilder: (ctx, index) {
          return FeedCard(post: dummyPosts[index]);
        },
      ),
    );
  }

  int _getCountForScreenType(ScreenStatus screenStatus) {
    if (screenStatus == ScreenStatus.desktop) {
      return 3;
    } else if (screenStatus == ScreenStatus.tablet) {
      return 2;
    }
    return 1;
  }
}

class FeedCard extends StatelessWidget {
  final Post post;

  const FeedCard({
    Key? key,
    required this.post,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.asset(
            post.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: AppConst.padding),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppConst.padding),
          child: Row(
            children: [
              CircleAvatar(
                radius: 14,
                backgroundImage: AssetImage(post.userImg),
              ),
              const SizedBox(width: AppConst.padding),
              Text(post.userName),
              const Spacer(),
              Row(
                children: [
                  const Icon(
                    Icons.favorite_border,
                    color: Colors.white54,
                  ),
                  const SizedBox(width: AppConst.padding / 2),
                  Text(post.likes.toString()),
                  const SizedBox(width: AppConst.padding),
                  const Icon(
                    Icons.chat_bubble_outline_rounded,
                    color: Colors.white54,
                  ),
                  const SizedBox(width: AppConst.padding / 2),
                  Text(post.comments.toString()),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: AppConst.padding),
      ],
    );
  }
}
