import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List producttitle = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home Page"),
          actions: [
            Icon(
              Icons.favorite,
              color: Colors.red,
            ),
            Icon(
              Icons.favorite,
              color: Colors.red,
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              productcard(context, "30% off", Icon(Icons.favorite),
                  "Black T-Shirt", "\$50", Icon(Icons.shopping_cart)),
              productcard(context, "30% off", Icon(Icons.favorite),
                  "Black T-Shirt", "\$50", Icon(Icons.shopping_cart)),
            ],
          ),
        ));
  }
}

Widget productcard(context, String dicount, Icon iconfavour, producttitle,
    productprice, Icon iconcart) {
  return Center(
    child: Container(
      width: MediaQuery.of(context).size.width * 0.9,
      margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.01),
      child: Card(
        child: Container(
          padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.01),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                iconfavour,
                Container(
                  padding:
                      EdgeInsets.all(MediaQuery.of(context).size.width * 0.01),
                  child: Text(
                    dicount,
                    style: TextStyle(color: Colors.white),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://5.imimg.com/data5/HB/VQ/MY-44811379/men-black-plain-t-shirt-500x500.jpg"),
                    fit: BoxFit.cover),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text(producttitle), Text(productprice)],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [iconcart],
            )
          ]),
        ),
      ),
    ),
  );
}
