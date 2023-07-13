import 'package:flutter/material.dart';
import 'package:sliverexample/home/widgets/fff.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> img = [
    "assets/png/b1.png",
    "assets/png/blackb.png",
    "assets/png/b1.png",
    "assets/png/blackb.png",
    "assets/png/b1.png",
    "assets/png/blackb.png",
    "assets/png/b1.png",
    "assets/png/blackb.png",
    "assets/png/blackb.png",
  ];
  List<String> textt = [
    "Burgers",
    "Pizza",
    "French dogs",
    "Snacks",
    "dasdas",
    'adasdasd',
    'dasda'
        "Snacks",
    "dasdas",
    "Snacks",
    "dasdas",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF111015),
      body: Column(
        children: [
          Expanded(
            child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  pinned: true,
                  expandedHeight: 40,
                  // flexibleSpace: FlexibleSpaceBar(
                  //   title: const Text("Example four"),
                  //   // centerTitle: true,
                  //   background: Image.network(
                  //     "https://source.unsplash.com/random",
                  //     fit: BoxFit.cover,
                  //   ),
                  // ),
                  backgroundColor: const Color(0xFF111015),
                  // toolbarHeight: 100,
                  title: const Text('Hello Maksim'),

                  actions: [
                    IconButton(
                      icon: const Icon(Icons.search),
                      onPressed: () {},
                    ),
                    const CircleAvatar(
                      backgroundImage:
                          NetworkImage("https://source.unsplash.com/random"),
                    ),
                    const SizedBox(
                      width: 12,
                    )
                  ],
                ),
                SliverPadding(
                  padding: const EdgeInsets.all(8),
                  sliver: SliverToBoxAdapter(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              bottom: 0.0, left: 8, right: 8),
                          child: Column(
                            children: [
                              Container(
                                height: 6,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: const LinearGradient(
                                    colors: [
                                      Color(0xffE1D24A),
                                      Color(0xffC69223),
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                  ),
                                ),
                                width: double.infinity,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Your favourite Products",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                  TextButton(
                                      onPressed: () {},
                                      child: const Text(
                                        'See all',
                                        style: TextStyle(
                                            color: Color(0xFFEDB216),
                                            fontSize: 16),
                                      ))
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Container(
                    height: 200,
                    // width: 282,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: img.length,
                      itemBuilder: (context, index) {
                        String rasm = img[index];
                        return Container(
                            color: const Color(0xFF22222A),
                            padding: const EdgeInsets.all(7),
                            width: 340,
                            margin: const EdgeInsets.all(12),
                            child: Row(
                              children: [
                                Image.asset(
                                  rasm,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          "Chicken Burger",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18),
                                        ),
                                        IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.favorite,
                                            color: Colors.red,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Text(
                                      'Котлета куриная, \nсвежиеовощи,\nсыр чеддер,\n соус для бургера',
                                      style: TextStyle(
                                          color: Color(0xFF6A6A6E),
                                          fontSize: 14),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        const Text(
                                          "\$15",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18),
                                        ),
                                        const SizedBox(width: 40),
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              10,
                                            ),
                                            color: const Color(0xFF111015),
                                          ),
                                          width: 50,
                                          height: 20,
                                          child: const Center(
                                            child: Text(
                                              "300g",
                                              style: TextStyle(
                                                  color: Color(0xFF6A6A6E),
                                                  fontSize: 12),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 10),
                                        Align(
                                          alignment: Alignment.bottomRight,
                                          child: Container(
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              border: Border.all(
                                                color: const Color(
                                                  0xFFC69223,
                                                ),
                                              ),
                                            ),
                                            child: const CircleAvatar(
                                              // radius: 32,
                                              backgroundColor:
                                                  Colors.transparent,
                                              child: Icon(
                                                Icons.badge,
                                                color: Color(0xFFC69223),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ));
                      },
                    ),
                  ),
                ),
                SliverPadding(
                  padding: const EdgeInsets.all(8),
                  sliver: SliverToBoxAdapter(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "All Products",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              'See all',
                              style: TextStyle(
                                  color: Color(0xFFEDB216), fontSize: 16),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SliverPersistentHeader(
                  pinned: true,
                  delegate: PinnedHeaderView(),
                ),
                SliverGrid(
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      String raa = img[index];
                      String text = textt[index];
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            // height: 250,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: const Color(
                                  0xff22222A,
                                ),
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              children: [
                                Image.asset(
                                  raa,
                                ),
                                Text(
                                  text,
                                  style: const TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                                const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 8),
                                  child: Text(
                                    'Котлета свино-говяжья,свежие овощи, сыр чеддер,соус для бургера',
                                    style: TextStyle(
                                        fontSize: 13, color: Colors.white),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    const Text(
                                      "\$15",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18),
                                    ),
                                    const SizedBox(width: 40),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          10,
                                        ),
                                        color: const Color(0xFF111015),
                                      ),
                                      width: 50,
                                      height: 20,
                                      child: const Center(
                                        child: Text(
                                          "300g",
                                          style: TextStyle(
                                              color: Color(0xFF6A6A6E),
                                              fontSize: 12),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    Align(
                                      alignment: Alignment.bottomRight,
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: [
                                              Color(0xffE1D24A),
                                              Color(0xffC69223),
                                            ],
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                          ),
                                          shape: BoxShape.circle,
                                        ),
                                        child: const CircleAvatar(
                                          // radius: 32,
                                          backgroundColor: Colors.transparent,
                                          child: Icon(
                                            Icons.add,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            )),
                      );
                    },
                    // addRepaintBoundaries: true,
                    childCount: img.length,
                  ),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 10.0,
                    childAspectRatio: 0.8,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
