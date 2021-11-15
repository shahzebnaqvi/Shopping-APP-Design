import 'package:flutter/material.dart';

import 'package:shoppingbasket/screens/data.dart';

class Favourite extends StatefulWidget {
  const Favourite({Key? key}) : super(key: key);

  @override
  State<Favourite> createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  deleteit(index) {
    setState(() {
      producttitlelstfav.remove(index);
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
              "Favourite",
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
                itemCount: producttitlelstfav.length,
                itemBuilder: (context, index) {
                  Icon icondelt = Icon(
                    Icons.delete,
                    color: Colors.red,
                  );
                  String dicount =
                      productdiscountlst[producttitlelstfav[index]];
                  String productimg =
                      productimagelst[producttitlelstfav[index]];
                  String producttitle =
                      producttitlelst[producttitlelstfav[index]];
                  String productprice =
                      productpricelst[producttitlelstfav[index]];

                  Icon iconcart = Icon(
                    Icons.shopping_cart,
                    size: 30,
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
                                InkWell(
                                    onTap: () {
                                      deleteit(index);
                                    },
                                    child: icondelt),
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
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                InkWell(onTap: () {}, child: iconcart)
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
