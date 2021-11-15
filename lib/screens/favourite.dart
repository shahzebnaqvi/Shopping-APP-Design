import 'package:flutter/material.dart';

import 'package:shoppingbasket/screens/data.dart';

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
                  Icon iconfavour = Icon(
                    Icons.favorite,
                    color: Colors.red,
                  );

                  String dicount = "30% off";

                  String producttitle =
                      producttitlelst[producttitlelstfav[index]];
                  String productprice = "\$50";
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
                        child: Container(
                          padding: EdgeInsets.all(
                              MediaQuery.of(context).size.width * 0.01),
                          child: Column(children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                iconfavour,
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
                                    image: NetworkImage(
                                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShLHw-wMFrGfTnBKF3GZJzmllaWHWkWkr48GaXOdxTJ6MQB9EkeM8vudO4TBPA-BfJB5c&usqp=CAU"),
                                    fit: BoxFit.cover),
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
