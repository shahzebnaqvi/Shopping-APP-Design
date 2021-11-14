import 'package:flutter/material.dart';

class MyCart extends StatefulWidget {
  const MyCart({Key? key}) : super(key: key);

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
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
      body: Text("d"),
    );
  }
}
