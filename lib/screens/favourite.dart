import 'package:flutter/material.dart';

class Favourite extends StatefulWidget {
  const Favourite({Key? key}) : super(key: key);

  @override
  State<Favourite> createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.red),
        title: Row(
          children: [
            Text(
              "Favourite",
              style: TextStyle(color: Colors.black),
            ),
            Icon(
              Icons.favorite,
              color: Colors.red,
            )
          ],
        ),
      ),
      body: Text("d"),
    );
  }
}
