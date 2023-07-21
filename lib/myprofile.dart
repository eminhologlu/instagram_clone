import 'package:flutter/material.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            centerTitle: false,
            titleSpacing: -12.0,
            backgroundColor: Colors.black,
            leading: Icon(Icons.lock_rounded, size: 18),
            title: Text(
              "hologlu53",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 17),
                child: Icon(
                  Icons.add_box_outlined,
                  size: 30,
                ),
              ),
              Icon(
                Icons.menu_sharp,
                size: 36,
              )
            ],
          ),
          body: Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: Column(children: [
                Row(
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 47,
                          backgroundColor: Color.fromARGB(255, 162, 211, 2),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, top: 30),
                      child: Column(
                        children: [
                          Text(
                            "0",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.grey),
                          ),
                          Text(
                            "Gönderiler",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, top: 30),
                      child: Column(
                        children: [
                          Text(
                            "150",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white),
                          ),
                          Text(
                            "Takipçi",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, top: 30),
                      child: Column(
                        children: [
                          Text(
                            "136",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white),
                          ),
                          Text(
                            "Takip",
                            style: TextStyle(fontSize: 16, color: Colors.white),
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
                            "Muhammet Emin Holoğlu",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "software eng.",
                            style: TextStyle(color: Colors.white),
                          )),
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
                          width: 155,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              backgroundColor: Colors.grey[850],
                            ),
                            onPressed: () {},
                            child: Text("Düzenle"),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: SizedBox(
                            width: 155,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                backgroundColor: Colors.grey[850],
                              ),
                              onPressed: () {},
                              child: Text("Profili paylaş"),
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
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Hikayelerde Öne Çıkanlar",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Favori hikayelerini profilinde tut",
                        style: TextStyle(color: Colors.white),
                      )),
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.white, width: 0.2),
                              borderRadius: BorderRadius.circular(30)),
                          child: ClipOval(
                            child: Material(
                              color: const Color.fromARGB(
                                  255, 0, 0, 0), // Button color
                              child: InkWell(
                                onTap: () {},
                                child: SizedBox(
                                    width: 65,
                                    height: 65,
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      size: 40,
                                    )),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 6),
                      child: SizedBox(
                          width: 310,
                          height: 100,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 20,
                            itemBuilder: (BuildContext ctx, index) {
                              return Container(
                                height: 80,
                                width: 80,
                                decoration:
                                    const BoxDecoration(shape: BoxShape.circle),
                                child: Padding(
                                  padding: const EdgeInsets.all(7.0),
                                  child: Container(
                                    decoration: const BoxDecoration(
                                        color: Color.fromARGB(255, 54, 53, 53),
                                        shape: BoxShape.circle),
                                    child: CircleAvatar(
                                      backgroundColor:
                                          Color.fromARGB(255, 56, 55, 55),
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(top: 125.0),
                                        child: Text("",
                                            style: TextStyle(
                                              color: Colors.white,
                                            )),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          )),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  widthFactor: 12.8,
                  heightFactor: 0.4,
                  child: Text(
                    "Yeni",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                TabBar(
                    indicatorWeight: 0.7,
                    indicatorColor: Colors.white,
                    tabs: [
                      Tab(icon: Icon(Icons.grid_on_rounded)),
                      Tab(icon: Icon(Icons.person_pin_rounded)),
                    ]),
                Padding(
                  padding: const EdgeInsets.only(top: 80),
                  child: Column(
                    children: [
                      Container(
                        width: 95,
                        height: 95,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 1.5),
                            borderRadius: BorderRadius.circular(50)),
                        child: Icon(
                          Icons.camera_alt_outlined,
                          color: Colors.white,
                          size: 60,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Text(
                          "Henüz Hiç Gönderi Yok",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 26,
                              fontWeight: FontWeight.w600),
                        ),
                      )
                    ],
                  ),
                ),
              ]))),
    );
  }
}
