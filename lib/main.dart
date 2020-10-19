import 'package:flutter/material.dart';
import 'package:login_screen/constant.dart';
import 'package:login_screen/signin_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Login Authontication',
        theme: ThemeData(
            primaryColor: kPrimaryColor,
            scaffoldBackgroundColor: kBackgroundColor,
            brightness: Brightness.dark,
            textTheme: TextTheme(
                // ignore: deprecated_member_use
                display1:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                // ignore: deprecated_member_use
                headline: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.normal),
                button: TextStyle(color: kPrimaryColor)),
            inputDecorationTheme: InputDecorationTheme(
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
              color: Colors.white.withOpacity(.2),
            )))),
        home: WelcomePage());
  }
}

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
              child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/pexels1.jpg'),
                    fit: BoxFit.cover)),
          )),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(children: [
                    TextSpan(
                        text: 'BAKING LESSONS\n',
                        // ignore: deprecated_member_use
                        style: Theme.of(context)
                            .textTheme
                            // ignore: deprecated_member_use
                            .headline
                            .copyWith(fontWeight: FontWeight.bold)),
                    TextSpan(
                        text: 'MASTER THE ART OF BAKING',
                        // ignore: deprecated_member_use
                        style: Theme.of(context)
                            .textTheme
                            // ignore: deprecated_member_use
                            .headline)
                  ])),
              FittedBox(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return SigninScreen();
                    }));
                  },
                  child: Container(
                    margin: EdgeInsets.only(bottom: 20),
                    padding: EdgeInsets.symmetric(horizontal: 26, vertical: 16),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(26),
                        color: kPrimaryColor),
                    child: Row(
                      children: <Widget>[
                        Text('START LEARNING',
                            style: Theme.of(context)
                                .textTheme
                                .button
                                .copyWith(color: Colors.black)),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.black,
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}
