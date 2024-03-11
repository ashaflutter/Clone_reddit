
import 'package:flutter/material.dart';
import 'package:reddit_clone_ui/models/post.dart';
import 'package:reddit_clone_ui/Screens/HomeScreen/Widgets/home_post_container.dart';
import 'package:reddit_clone_ui/Screens/HomeScreen/Widgets/popular_post_container.dart';
import 'package:reddit_clone_ui/Screens/HomeScreen/Widgets/trending_container.dart';





class HomeWiget extends StatefulWidget {
  const HomeWiget({super.key});

  @override
  State<HomeWiget> createState() => _HomeWigetState();
}
 @override
class _HomeWigetState extends State<HomeWiget> with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
        headerSliverBuilder: (context, value) {
          return [
            SliverToBoxAdapter(
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 2.0,
                      offset: const Offset(2.0, 2.0),
                    )
                  ]
                ),
                alignment: Alignment.center,
                child: SizedBox(
                  width: 180,
                  child: TabBar(
                      controller: _tabController,
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.grey.shade600,
                      indicatorColor: Theme.of(context).colorScheme.secondary,
                      tabs: const [
                        Tab(text: "Home"),
                        Tab(text: "Popular"),
                      ] ),
                ),
              ),
            )
          ];
        },
        body: TabBarView(
            controller: _tabController,
            children: const [
              HomeTabView(),
              PopularTabView(),
            ],
        )
    );
  }
}

class PopularTabView extends StatelessWidget {
  const PopularTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}


  @override
  Widget build(BuildContext context) {
    return   ListView(
    children: [
      const PopularPostContainer(),
      const TrendingContainer(),
      const SizedBox(height: 8.0),
    ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: Post.posts.length,
        itemBuilder:(context, index) {
final post =Post.posts[index];

}),
    ],
    );
  }


class HomeTabView extends StatelessWidget {
  const HomeTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView(
    children: [
      const HomePostContainer(),


ListView.builder(
shrinkWrap: true,
physics: const NeverScrollableScrollPhysics(),
itemCount: Post.posts.length,
itemBuilder: (context, index) {
  final post =  Post.posts[index];

}),
    ],
    );
  }
}
