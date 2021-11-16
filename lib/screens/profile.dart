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
        body: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Center(
              child: CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage("assets/images/avatar.jpg"),
              ),
            ),
            Text(
              "Shahzeb Naqvi",
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.06,
                  fontWeight: FontWeight.bold),
            ),
            listbottom("Email", "email123@gmail.com"),
            listbottom("Phone Number", "090078601"),
            listbottom("Date of Birth", "1-1-1990"),
            listbottom("City", "Karachi"),
            Icon(
              Icons.favorite,
              color: Colors.red,
              size: 40,
            )
          ]),
        ));
  }
}

Widget listbottom(tag, detail) {
  return ListTile(
    title: Text(
      tag,
      style: TextStyle(color: Colors.orange),
    ),
    subtitle: Text(detail),
  );
}
