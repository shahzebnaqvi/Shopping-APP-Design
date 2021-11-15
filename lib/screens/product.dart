import 'package:flutter/material.dart';
import 'package:shoppingbasket/screens/data.dart';

class Product extends StatefulWidget {
  Product({Key? key, required this.indexvalue}) : super(key: key);
  final indexvalue;

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  submit(index) {
    setState(() {
      producttitlelstcart.add(index);
      print(producttitlelstcart);
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
              "${producttitlelst[widget.indexvalue]}",
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
        child: Container(
          margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.03),
          child: Column(
            children: [
              Image(
                image: AssetImage(
                  productimagelst[widget.indexvalue],
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.03),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      producttitlelst[widget.indexvalue],
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.05,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(productpricelst[widget.indexvalue],
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.05,
                        ))
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.02),
                child: RichText(
                    text: TextSpan(
                        text: productdetaillst[widget.indexvalue],
                        style: TextStyle(color: Colors.black),
                        children: [
                      TextSpan(
                          text: productdetaillst[widget.indexvalue],
                          style: TextStyle(color: Colors.black)),
                      TextSpan(
                          text: productdetaillst[widget.indexvalue],
                          style: TextStyle(color: Colors.black)),
                      TextSpan(
                          text: productdetaillst[widget.indexvalue],
                          style: TextStyle(color: Colors.black)),
                      TextSpan(
                          text: productdetaillst[widget.indexvalue],
                          style: TextStyle(color: Colors.black)),
                      TextSpan(
                          text: productdetaillst[widget.indexvalue],
                          style: TextStyle(color: Colors.black)),
                      TextSpan(
                          text: productdetaillst[widget.indexvalue],
                          style: TextStyle(color: Colors.black)),
                      TextSpan(
                          text: productdetaillst[widget.indexvalue],
                          style: TextStyle(color: Colors.black))
                    ])),
              ),
              ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(primary: Colors.red),
                  onPressed: () {
                    submit(widget.indexvalue);
                  },
                  icon: Icon(Icons.shopping_cart_outlined),
                  label: Text("Add to cart"))
            ],
          ),
        ),
      ),
    );
  }
}
