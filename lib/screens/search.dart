import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  TextEditingController txt = TextEditingController();
  var getvalue = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.red),
          title: TextField(
            onChanged: (value) {
              getvalue = value;
            },
            controller: txt,
            style: TextStyle(
              fontSize: 15.0,
              color: Color(0xFFbdc6cf),
            ),
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(100),
                ),
              ),
              hintText: ' Search by title',
              contentPadding: EdgeInsets.all(8.0),
            ),
          ),
          actions: [Icon(Icons.search)]),
      body: ListTile(),
    );
  }
}
