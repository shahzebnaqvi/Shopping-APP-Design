import 'package:flutter/material.dart';
import 'package:shoppingbasket/screens/data.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  TextEditingController txt = TextEditingController();
  var getvalue = "";
  List lst = [];
  search() {
    setState(() {
      if (getvalue != "") {
        lst = [];
        print(getvalue);

        print(producttitlelst.contains(getvalue));
        if (producttitlelst.contains(getvalue) == true) {
          lst.add(getvalue);
          print(lst);
        } else if (producttitlelst.contains(getvalue) == false) {
          lst.add("Not found");
          print(lst);
        }
        // str1.replaceAll(gettext, "ddsd");
        // String str1 = "Hello World";
        // str1.replaceAll('World', 'ALL');
        // print(lst);
      }
    });
  }

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
            actions: [
              InkWell(
                  onTap: () {
                    search();
                  },
                  child: Icon(Icons.search))
            ]),
        body: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: lst.length,
          itemBuilder: (context, index) {
            return ListTile(title: Text("${lst[0]}"));
          },
        ));
  }
}
