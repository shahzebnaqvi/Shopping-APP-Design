import 'package:flutter/material.dart';
import 'package:shoppingbasket/screens/checkout.dart';
import 'package:shoppingbasket/screens/data.dart';

class MyCart extends StatefulWidget {
  const MyCart({Key? key}) : super(key: key);

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  deleteit(index) {
    setState(() {
      producttitlelstcart.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.red),
        title: Row(
          children: [
            Text(
              "MyCart",
              style: TextStyle(color: Colors.black),
            ),
            Icon(
              Icons.shopping_cart_outlined,
              color: Colors.red,
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: producttitlelstcart.length,
                itemBuilder: (context, index) {
                  String producttitle =
                      producttitlelst[producttitlelstcart[index]];
                  String dicount =
                      productdiscountlst[producttitlelstcart[index]];
                  String productimg =
                      productimagelst[producttitlelstcart[index]];

                  String productprice =
                      productpricelst[producttitlelstcart[index]];
                  Icon icondelt = Icon(
                    Icons.delete,
                    color: Colors.red,
                  );

                  return Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      margin: EdgeInsets.all(
                          MediaQuery.of(context).size.width * 0.01),
                      child: Card(
                        elevation: 6,
                        shadowColor: Colors.black,
                        child: Container(
                          padding: EdgeInsets.all(
                              MediaQuery.of(context).size.width * 0.02),
                          child: Column(children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(
                                      MediaQuery.of(context).size.width * 0.01),
                                  child: Text(
                                    dicount,
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                ),
                              ],
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.5,
                              height: MediaQuery.of(context).size.height * 0.3,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(productimg),
                                    fit: BoxFit.fitWidth),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  producttitle,
                                  style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.05,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(productprice,
                                    style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.05,
                                    ))
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.blue[800]),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                Checkout(indexvalue: index),
                                          ));
                                    },
                                    child: Text("Check out")),
                                InkWell(
                                    onTap: () {
                                      deleteit(index);
                                    },
                                    child: icondelt),
                              ],
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.04,
                            )
                          ]),
                        ),
                      ),
                    ),
                  );
                  ;
                }),
          ],
        ),
      ),
    );
  }
}
