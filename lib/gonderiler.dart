import 'package:flutter/material.dart';

class Gonderiler extends StatefulWidget {
  const Gonderiler({super.key});

  @override
  State<Gonderiler> createState() => _GonderilerState();
}

class _GonderilerState extends State<Gonderiler> {
  bool isLiked = false;
  List<String> ava = <String>[
    "images/avatar1.png",
    "images/avatar2.png",
    "images/avatar3.png"
  ];
  List<String> username = <String>[
    "Hikayen",
    "melikagc",
    "ayse",
    "fenerbahce",
    "unigfb",
    "alikoc",
  ];
  List<String> users = <String>[
    "gencfb_org",
    "unigfb",
    "fenerbahce",
    "hologlu",
    "tff_org",
    "superlig",
  ];
  List<String> userstop = <String>[
    "gencfb_org",
    "unigfb",
    "fenerbahce",
    "hologlu",
    "tff_org",
    "superlig",
  ];
  List<String> begenme = <String>[
    "17.958 beğenme",
    "100 bin beğenme",
    "5.000 beğenme",
    "999 bin beğenme",
    "1 MN beğenme",
    "200 bin beğenme",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          leadingWidth: 130,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10, top: 10),
              child: Icon(Icons.favorite_border),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, top: 10),
              child: Icon(Icons.messenger_outline),
            ),
          ],
          leading: Padding(
            padding: const EdgeInsets.only(left: 10, top: 10),
            child: Image.asset(
              "images/Instagram.png",
              color: Colors.white,
              fit: BoxFit.contain,
            ),
          ),
        ),
        body: Column(
          children: [
            SizedBox(
                width: double.infinity,
                height: 165,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 20,
                  itemBuilder: (BuildContext ctx, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                        height: 95,
                        width: 95,
                        decoration: const BoxDecoration(
                            gradient: LinearGradient(colors: [
                              Color.fromARGB(255, 210, 147, 11),
                              Color.fromARGB(255, 234, 182, 10),
                              Color.fromARGB(255, 240, 158, 6),
                              Color.fromARGB(255, 233, 19, 155)
                            ]),
                            shape: BoxShape.circle),
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Container(
                            decoration: const BoxDecoration(
                                color: Colors.white, shape: BoxShape.circle),
                            child: CircleAvatar(
                              backgroundColor:
                                  Color.fromARGB(255, 255, 255, 255),
                              foregroundImage: AssetImage(ava[index % 3]),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 125.0),
                                child: Text(username[index % 6],
                                    style: TextStyle(
                                      color: Colors.white,
                                    )),
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                )),
            SizedBox(
              height: 480,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 5,
                itemBuilder: (BuildContext ctx, index) {
                  return Column(
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 460,
                            height: 460,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("images/fenerbahce.jpg"),
                                fit: BoxFit.contain,
                              ),
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 40, left: 6),
                              child: Column(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pushNamed(context, 'profile');
                                    },
                                    child: Row(
                                      children: [
                                        CircleAvatar(
                                          backgroundColor:
                                              Color.fromARGB(255, 150, 248, 2),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 10),
                                          child: Text(
                                            userstop[index % 6],
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 5),
                                          child: Icon(
                                            Icons.verified,
                                            color: Colors.blue,
                                            size: 16,
                                          ),
                                        ),
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.more_horiz,
                                              color: Colors.white,
                                            ))
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 285),
                                    child: Row(
                                      children: [
                                        Container(
                                          child: IconButton(
                                              onPressed: () {
                                                setState(() {
                                                  isLiked = !isLiked;
                                                });
                                              },
                                              icon: isLiked
                                                  ? Icon(Icons.favorite,
                                                      color: Colors.red)
                                                  : Icon(
                                                      Icons
                                                          .favorite_border_outlined,
                                                      color: Colors.white)),
                                        ),
                                        Container(
                                          child: IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                                Icons
                                                    .check_box_outline_blank_rounded,
                                                color: Colors.white),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 0, bottom: 4),
                                          child: Container(
                                            child: Transform.rotate(
                                              angle: 12,
                                              child: IconButton(
                                                onPressed: () {},
                                                icon: Icon(Icons.send,
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 197, top: 0),
                                          child: Container(
                                            child: Icon(
                                              Icons.rectangle_outlined,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                      child: Text(
                                        begenme[index % 6],
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                      child: Row(
                                        children: [
                                          Text(
                                            users[index % 6],
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 4),
                                            child: Text(
                                              "2023/2024 sezonu şampiyonu FENERBAHÇE!",
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ));
  }
}
