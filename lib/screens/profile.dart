import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.red),
        ),
        body: Column(children: [
          CircleAvatar(
            radius: 100,
            backgroundImage: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDfSwap3iAYqS7YoldaB-ZT92aoKU9KymmtbNV3gjeJ5wI9Wed4AT8jANOQ3C6k3mI_XQ&usqp=CAU"),
          ),
          Text("Shahzeb Naqvi")
        ]));
  }
}
