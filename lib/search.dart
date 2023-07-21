import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  List<MaterialAccentColor> colors = [
    Colors.blueAccent,
    Colors.lightGreenAccent,
    Colors.orangeAccent,
    Colors.pinkAccent,
    Colors.yellowAccent,
    Colors.tealAccent,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: Container(
          width: double.infinity,
          height: 40,
          decoration: BoxDecoration(
              color: Colors.grey[800], borderRadius: BorderRadius.circular(12)),
          child: Center(
            child: TextField(
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.left,
              decoration: InputDecoration(
                  filled: false,
                  fillColor: Colors.grey[800],
                  hintText: "Ara",
                  hintStyle: TextStyle(color: Colors.grey[400], fontSize: 18),
                  icon: Padding(
                    padding: const EdgeInsets.only(left: 11),
                    child: Icon(
                      Icons.search,
                      color: Colors.grey[400],
                    ),
                  ),
                  border: InputBorder.none),
            ),
          ),
        ),
      ),
      body: GridView.builder(
          itemCount: 20,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemBuilder: (context, index) {
            return Container(
              color: colors[index % 6],
            );
          }),
    );
  }
}
