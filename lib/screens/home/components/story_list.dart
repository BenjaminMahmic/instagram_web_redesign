import 'package:flutter/material.dart';
import 'package:instagram_web_redesign/app/constants.dart';
import 'package:instagram_web_redesign/data/dummy_story_list.dart';
import 'package:instagram_web_redesign/main.dart';

class HomeStoryList extends StatelessWidget {
  const HomeStoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScrollController _scrollController = ScrollController();

    return SliverToBoxAdapter(
      child: SizedBox(
        height: 120,
        width: double.infinity,
        child: ScrollConfiguration(
          behavior: MyCustomScrollBehavior(),
          child: ListView.builder(
            controller: _scrollController,
            scrollDirection: Axis.horizontal,
            itemCount: dummyStorys.length,
            itemBuilder: (ctx, i) {
              return i == 0
                  ? Row(
                      children: [
                        const StoryCard(
                          imageUrl: 'assets/pictures/user.jpg',
                          isViewed: true,
                          haveChild: true,
                        ),
                        StoryCard(
                          imageUrl: dummyStorys[i].imageUrl,
                          isViewed: dummyStorys[i].viewed,
                        ),
                      ],
                    )
                  : StoryCard(
                      imageUrl: dummyStorys[i].imageUrl,
                      isViewed: dummyStorys[i].viewed,
                    );
            },
          ),
        ),
      ),
    );
  }
}

class StoryCard extends StatelessWidget {
  final String imageUrl;
  final bool isViewed;
  final bool? haveChild;

  const StoryCard(
      {Key? key,
      required this.imageUrl,
      required this.isViewed,
      this.haveChild})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: AppConst.padding),
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: isViewed
            ? null
            : const LinearGradient(
                colors: [
                  AppConst.colorOrange,
                  AppConst.colorRedOrange,
                  AppConst.colorYellow,
                ],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
              ),
        boxShadow: const [
          BoxShadow(
            color: Colors.white24,
            blurRadius: 8,
          )
        ],
      ),
      child: Center(
        child: haveChild == true
            ? Container(
                height: 70,
                width: 70,
                decoration: const BoxDecoration(
                  color: AppConst.colorGreyDark,
                  shape: BoxShape.circle,
                ),
                child: const Center(
                  child: Icon(
                    Icons.add_circle,
                    size: 36,
                    color: Colors.white54,
                  ),
                ),
              )
            : Container(
                height: 97,
                width: 97,
                decoration: const BoxDecoration(
                  color: AppConst.colorGreyDark,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Container(
                    height: 85,
                    width: 85,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          imageUrl,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
      ),
    );
  }
}
