import 'package:flutter/material.dart';

class NewWidget extends StatelessWidget {
  const NewWidget({
    super.key,
    required this.img,
    required this.textt,
  });

  final List<String> img;
  final List<String> textt;

  @override
  SliverGrid build(BuildContext context) {
    return SliverGrid(
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
                          "₽15",
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
    );
  }
}
