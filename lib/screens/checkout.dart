import 'package:flutter/material.dart';
import 'package:shoppingbasket/screens/data.dart';

class Checkout extends StatefulWidget {
  Checkout({Key? key, required this.indexvalue}) : super(key: key);
  final indexvalue;

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
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
              Card(
                child: ListTile(
                  leading: CircleAvatar(
                    child: Image(
                      image: AssetImage(
                        productimagelst[widget.indexvalue],
                      ),
                    ),
                  ),
                  title: Text(
                    producttitlelst[widget.indexvalue],
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.05,
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(productpricelst[widget.indexvalue],
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.04,
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
