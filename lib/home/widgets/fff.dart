import 'package:flutter/material.dart';

class PinnedHeaderView extends SliverPersistentHeaderDelegate {
  List<String> categories = [
    "Burgers",
    "Pizza",
    "French dogs",
    "Snacks",
    "dasdas",
    'adasdasd',
    'dasda'
  ];
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: const Color(0xFF111015),
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        // SizedBox(
        //   height: 50,
        // ),
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) {
              String texts = categories[index];
              return Container(
                padding: const EdgeInsets.all(8),
                margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xffE1D24A),
                        Color(0xffC69223),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [const Icon(Icons.food_bank), Text(texts)],
                ),
              );
            },
          ),
        )
      ]),
    );
  }

  @override
  double get maxExtent => 50;

  @override
  double get minExtent => 50;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      true;
}
