import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                decoration: BoxDecoration(),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDfSwap3iAYqS7YoldaB-ZT92aoKU9KymmtbNV3gjeJ5wI9Wed4AT8jANOQ3C6k3mI_XQ&usqp=CAU"),
                  ),
                  title: Text("Username"),
                  subtitle: Text("abcuser@gmail.com"),
                )),
            ListTile(
              leading: Icon(Icons.logout),
              title: const Text('Logout'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart_outlined),
              title: const Text('Cart'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: const Text('Favourite'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: const Text('About'),
              onTap: () {},
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.red),
        title: Center(
            child: Text("Home Page", style: TextStyle(color: Colors.black))),
        actions: [
          Icon(
            Icons.favorite,
            color: Colors.red,
            size: 35,
          ),
          SizedBox(width: MediaQuery.of(context).size.width * 0.02),
          Stack(alignment: Alignment.topCenter, children: [
            Container(
              alignment: Alignment.center,
              child: Icon(
                Icons.shopping_cart,
                color: Colors.red,
                size: 35,
              ),
            ),
            Positioned(
              left: 15,
              top: 2,
              child: CircleAvatar(
                radius: 10,
                backgroundColor: Colors.red,
                child: Text("3"),
              ),
            )
          ]),
          SizedBox(width: MediaQuery.of(context).size.width * 0.02),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  productcategory(context, "Shoes", "10 Pieces Left"),
                  productcategory(context, "Shoes", "10 Pieces Left"),
                  productcategory(context, "Shoes", "10 Pieces Left"),
                  productcategory(context, "Shoes", "10 Pieces Left"),
                ])),
            productcard(
                context,
                "30% off",
                Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
                "Black T-Shirt",
                "\$50",
                Icon(
                  Icons.shopping_cart,
                  size: 30,
                )),
            productcard(
                context,
                "30% off",
                Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
                "Black T-Shirt",
                "\$50",
                Icon(Icons.shopping_cart)),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
            backgroundColor: Colors.pink,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            backgroundColor: Colors.pink,
          ),
        ],
        selectedItemColor: Colors.amber[800],
      ),
    );
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
                      fontSize: MediaQuery.of(context).size.width * 0.05,
                      fontWeight: FontWeight.bold),
                ),
                Text(productprice,
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.05,
                    ))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [iconcart],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            )
          ]),
        ),
      ),
    ),
  );
}

Widget productcategory(context, categ, categdetail) {
  return Card(
    child: Container(
      padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
      child: Row(children: [
        Image.network(
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShLHw-wMFrGfTnBKF3GZJzmllaWHWkWkr48GaXOdxTJ6MQB9EkeM8vudO4TBPA-BfJB5c&usqp=CAU",
          width: MediaQuery.of(context).size.width * 0.2,
        ),
        Column(
          children: [
            Text(
              categ,
              style:
                  TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05),
            ),
            Text(
              categdetail,
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.04,
                  color: Colors.purple),
            )
          ],
        )
      ]),
    ),
  );
}
