import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(debugShowCheckedModeBanner: false, home: RegisterPage()),
  );
}

class RegisterPage extends StatelessWidget {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromRGBO(0, 0, 0, 1.0),
        leading: TextButton(
          onPressed: () {
            print("Back button tapped.");
          },
          child: const Text(
            'Back',
            style: TextStyle(color: Colors.blue, fontSize: 18),
          ),
        ),
        title: Image.asset(
          'assets/images/prime_logo.png',
          height: 25,
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.refresh,
              color: Colors.white,
              size: 26,
            ),
            onPressed: () {
              print("Refresh icon tapped.");
            },
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 14, vertical: 20),
        color: Colors.black,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Create account",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: "Name",
                hintStyle: TextStyle(color: Colors.black45),
              ),
              style: TextStyle(color: Colors.black45),
            ),
            SizedBox(
              height: 12,
            ),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: "Your email address",
                hintStyle: TextStyle(color: Colors.black45),
              ),
              style: TextStyle(color: Colors.black45),
            ),
            SizedBox(
              height: 12,
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: "Create a password",
                hintStyle: TextStyle(color: Colors.black45),
              ),
              style: TextStyle(color: Colors.black45),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Icon(
                  Icons.info_outline_rounded,
                  color: Colors.blue,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Passwords must be at least 6 characters.",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
            Row(
              children: [
                Theme(
                  data: ThemeData(unselectedWidgetColor: Colors.grey),
                  child: Checkbox(
                    value: isChecked,
                    onChanged: (bool value) {},
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Show password",
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            SizedBox(
              height: 45,
              child: TextButton(
                onPressed: () {
                  print("Create account button tapped.");
                },
                child: Text(
                  "Create your Amazon account",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                      text: 'By creating an account, you agree to the ',
                      style: TextStyle(color: Colors.grey)),
                  TextSpan(
                      text: 'Prime Video.\n',
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold)),
                  TextSpan(
                      text: 'Terms of use ',
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold)),
                  TextSpan(
                      text:
                          'and license agreements which can be found on the Amazon Website.',
                      style: TextStyle(color: Colors.grey)),
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              "Already have an account?",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 12,
            ),
            SizedBox(
              height: 45,
              child: TextButton(
                onPressed: () {
                  print("Sign-in-now button tapped.");
                },
                child: Text(
                  "Sign-in-now",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blueGrey),
                ),
              ),
            ),
            SizedBox(
              height: 64,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.copyright,
                  color: Colors.grey,
                  size: 16,
                ),
                SizedBox(
                  width: 4,
                ),
                Text("1996-2021, Amazon.com, Inc. or its affiliates.",
                    style: TextStyle(color: Colors.grey)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
