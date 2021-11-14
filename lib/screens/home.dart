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
        body: Column(
          children: [
            productcard(context, "30% off", Icon(Icons.favorite),
                "Black T-Shirt", "\$50", Icon(Icons.favorite)),
            productcard(context, "30% off", Icon(Icons.favorite),
                "Black T-Shirt", "\$50", Icon(Icons.favorite)),
          ],
        ));
  }
}

Widget productcard(context, String dicount, Icon iconfavour, producttitle,
    productprice, Icon iconcart) {
  return Center(
    child: Container(
      width: MediaQuery.of(context).size.width * 0.8,
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
            Image(
              image: NetworkImage(
                  "https://media.istockphoto.com/photos/front-of-men-cut-black-tshirt-isolated-on-white-background-picture-id1142212002?k=20&m=1142212002&s=612x612&w=0&h=KlgIb_GW0e6ZtIF5A4dxJ1n1KS19WV8Hpc8MpHkw6_o="),
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
