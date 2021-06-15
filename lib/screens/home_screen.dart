import 'package:anime_slayer_clone/widgets/widgets.dart';
import "package:flutter/material.dart";

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isGrid = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
              icon: Icon(isGrid ? Icons.grid_view : Icons.menu,
                  color: Colors.black),
              onPressed: () {
                setState(() {
                  isGrid = !isGrid;
                });
              })
        ],
        title: Text("Last Update", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      drawer: CustomDrawer(),
      body: CustomBody(isGrid:isGrid),
    );
  }
}
