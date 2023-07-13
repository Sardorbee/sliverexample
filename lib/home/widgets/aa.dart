import 'package:flutter/material.dart';

class ExampleHeaderView extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.brown,
    );
  }

  @override
  double get maxExtent => 300;

  @override
  double get minExtent => 105;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      true;
}
