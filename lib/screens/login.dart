import 'package:flutter/material.dart';
import 'package:shoppingbasket/screens/home.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController txt = TextEditingController();
  var getpassword = "";

  login() {
    setState(() {
      if (getpassword == "123456") {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Home()));
      } else {
        showAlertDialog(context);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Login",
          style: TextStyle(color: Colors.pink),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            margin: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.2,
                right: MediaQuery.of(context).size.width * 0.2),
            child: Column(
              children: [
                gape(context),
                Image.asset(
                  "assets/images/1.gif",
                  width: MediaQuery.of(context).size.width,
                ),
                gape(context),
                TextField(
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Color(0xFFbdc6cf),
                  ),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(100),
                      ),
                    ),
                    hintText: ' Username',
                    contentPadding: EdgeInsets.all(20.0),
                  ),
                ),
                gape(context),
                TextField(
                  onChanged: (value) {
                    getpassword = value;
                  },
                  controller: txt,
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Color(0xFFbdc6cf),
                  ),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(100),
                      ),
                    ),
                    hintText: ' Password',
                    contentPadding: EdgeInsets.all(20.0),
                  ),
                ),
                gape(context),
                ElevatedButton.icon(
                  icon: Icon(
                    Icons.login,
                    color: Colors.black,
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.transparent,
                    onPrimary: Colors.white,
                    shadowColor: Colors.greenAccent,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    side: BorderSide(width: 2, color: Colors.black),
                  ),
                  onPressed: () {
                    login();
                  },
                  label: const Text('Login',
                      style: TextStyle(fontSize: 18.0, color: Colors.black)),
                ),
                gape(context),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Not have an account?"),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Register.",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w900),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget gape(context) {
  return SizedBox(height: MediaQuery.of(context).size.height * 0.03);
}

showAlertDialog(BuildContext context) {
  // Create button
  Widget okButton = FlatButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  // Create AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Wrong Password"),
    content: Text("Please try again"),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
