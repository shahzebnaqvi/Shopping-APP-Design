import 'package:flutter/material.dart';
import 'package:shoppingbasket/screens/data.dart';

class Checkout extends StatefulWidget {
  Checkout({Key? key, required this.indexvalue}) : super(key: key);
  final indexvalue;

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  // String count = containsKey[x];
  int countcartproduct = producttitlelstcart.length;

  String printText(int inde) {
    int ab = 0;

    for (int a in producttitlelstcart) {
      if (a == inde) {
        ab++;
      }
    }
    String text = "${ab}";
    print(text);
    return '$text';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.red),
        title: Text(
          "Check Out",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.03),
          child: Column(
            children: [
              Text("Cart Overview",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: producttitlelstcartarrange.length,
                itemBuilder: (context, index) {
                  String producttitle =
                      producttitlelst[producttitlelstcartarrange[index]];
                  String productimg =
                      productimagelst[producttitlelstcartarrange[index]];
                  String productprice =
                      productpricelst[producttitlelstcartarrange[index]];
                  return Card(
                    child: ListTile(
                      leading: Container(
                        width: MediaQuery.of(context).size.width * 0.2,
                        height: MediaQuery.of(context).size.height * 0.2,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(productimg),
                              fit: BoxFit.fitWidth),
                        ),
                      ),
                      title: Text(
                        producttitle,
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.04,
                            fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        productprice,
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.03,
                        ),
                      ),
                      trailing: Wrap(children: [
                        Icon(Icons.add_circle),
                        Text(printText(index)),
                        Icon(Icons.remove_circle)
                      ]),
                    ),
                  );
                },
              ),
              Container(
                margin:
                    EdgeInsets.all(MediaQuery.of(context).size.width * 0.07),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Total"),
                      Text("\$2220"),
                    ]),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.red),
                  onPressed: () {},
                  child: Text("Address Details"))
            ],
          ),
        ),
      ),
    );
  }
}
