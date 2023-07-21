import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool isFollowed = false;
  List<MaterialAccentColor> colors = [
    Colors.blueAccent,
    Colors.lightGreenAccent,
    Colors.orangeAccent,
    Colors.purpleAccent,
    Colors.yellowAccent,
    Colors.tealAccent,
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios_new)),
          centerTitle: true,
          title: Text("darkwebhaber"),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 9),
              child: Icon(Icons.notifications_none_sharp),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 9),
              child: Icon(Icons.more_horiz),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 10, left: 10),
            child: Expanded(
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 50,
                            backgroundColor: Color.fromARGB(255, 255, 2, 120),
                            child: CircleAvatar(
                              radius: 47,
                              backgroundColor: Color.fromARGB(255, 176, 2, 211),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30, top: 30),
                        child: Column(
                          children: [
                            Text(
                              "40B",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white),
                            ),
                            Text(
                              "Gönderiler",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30, top: 30),
                        child: Column(
                          children: [
                            Text(
                              "819B",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white),
                            ),
                            Text(
                              "Takipçi",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30, top: 30),
                        child: Column(
                          children: [
                            Text(
                              "2",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white),
                            ),
                            Text(
                              "Takip",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Column(
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "DarkWeb Haber",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Güncel ve önemli haberleri sizlere ulaştırıyoruz.\n📧 contact@darkwebdigital.com\n💬 Telegram: t.me/darkwebhaber0\n⬇️ Trendyol İndirimli Yemek\n\n🔗 ty.gl/rmv7vhtge",
                              style: TextStyle(color: Colors.white),
                            )),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                          widthFactor: 0.5,
                          child: CircleAvatar(
                            radius: 15,
                            backgroundColor: Color.fromARGB(255, 94, 7, 255),
                          ),
                        ),
                        Align(
                          widthFactor: 0.5,
                          child: CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.amber,
                          ),
                        ),
                        Align(
                          widthFactor: 0.5,
                          child: CircleAvatar(
                            radius: 15,
                            backgroundColor: Color.fromARGB(255, 7, 226, 255),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            "kullanici1, kullanici2 ve 9 diğer kişi takip\nediyor",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 15),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 150,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                backgroundColor:
                                    isFollowed ? Colors.grey[850] : Colors.blue,
                              ),
                              onPressed: () {
                                setState(() {
                                  isFollowed = !isFollowed;
                                });
                              },
                              child:
                                  isFollowed ? Text("Takip") : Text("Takip et"),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: SizedBox(
                              width: 150,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  backgroundColor: Colors.grey[850],
                                ),
                                onPressed: () {},
                                child: Text("Mesaj"),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: SizedBox(
                              width: 60,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  backgroundColor: Colors.grey[850],
                                ),
                                onPressed: () {},
                                child: Icon(
                                  Icons.person_add_outlined,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  TabBar(
                      indicatorWeight: 0.7,
                      indicatorColor: Colors.white,
                      tabs: [
                        Tab(icon: Icon(Icons.grid_on_rounded)),
                        Tab(icon: Icon(Icons.video_collection_outlined)),
                        Tab(icon: Icon(Icons.person_pin_rounded)),
                      ]),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 500,
                    color: Colors.white,
                    child: TabBarView(
                      children: [
                        GridView.builder(
                            itemCount: 100,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3),
                            itemBuilder: (context, index) {
                              return Container(
                                color: colors[index % 6],
                              );
                            }),
                        GridView.builder(
                            itemCount: 24,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    childAspectRatio: 1 / 1.7,
                                    crossAxisCount: 3),
                            itemBuilder: (context, index) {
                              return Container(
                                color: colors[index % 6],
                              );
                            }),
                        GridView.builder(
                            itemCount: 24,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3),
                            itemBuilder: (context, index) {
                              return Container(
                                color: colors[index % 6],
                              );
                            }),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
