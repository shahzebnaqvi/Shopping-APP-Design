import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            color: Colors.blueAccent,
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                CircleAvatar(
                  radius: 100,
                  child: Icon(
                    Icons.messenger,
                    size: 100,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Text(
                  "Drop line about us",
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.06,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.circle,
                      color: Colors.white,
                      size: 10,
                    ),
                    Icon(
                      Icons.circle,
                      color: Colors.white,
                      size: 10,
                    ),
                    Icon(
                      Icons.circle,
                      color: Colors.white,
                      size: 10,
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          Icon(Icons.location_on, color: Colors.red, size: 30),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          Text("267 Jullian Moterway, Lalikeat, Karachi"),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Text(
            "Open Map",
            style: TextStyle(color: Colors.blue),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Icon(Icons.mobile_friendly, color: Colors.red, size: 30),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Text("0900003-33"),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Icon(Icons.timer, color: Colors.red, size: 30),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Text("Monday - Friday"),
        ],
      ),
    );
  }
}
