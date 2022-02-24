import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String desc = "Associate Software Engineer # SAP ABAP | #Flutter | #Android";

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [const Color(0xff213A50), const Color(0xff071930)],
        )),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                  child: Image.asset(
                    "assets/images/ar.jpg",
                    fit: BoxFit.cover,
                    width: 150,
                    height: 150,
                  )),
              SizedBox(
                height: 12,
              ),
              Text(
                "Rahman Mohammad",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 13,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: Text(
                  desc,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w300),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Connect with me",
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  GestureDetector(
                      onTap: () {
                        _launchURL("https://github.com/rahamanar");
                      },
                      child: Image.asset(
                        "assets/images/github.png",
                        width: 23,
                        height: 23,
                      )),
                  SizedBox(
                    width: 16,
                  ),
                  GestureDetector(
                      onTap: () {
                        _launchURL(
                            "https://www.linkedin.com/in/rahman-mohammad-106530112/");
                      },
                      child: Image.asset(
                        "assets/images/linkedin.png",
                        width: 23,
                        height: 23,
                      )),
                  SizedBox(
                    width: 16,
                  ),
                  GestureDetector(
                      onTap: () {
                        _launchURL("https://twitter.com/rahman___ar");
                      },
                      child: Image.asset(
                        "assets/images/twitter.png",
                        width: 23,
                        height: 23,
                      )),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  //_launchURL("https://drive.google.com/file/d/17VhMBS7BQMxG8XM8D5alC64O8vBJbdLF/view");
                  _launchURL("");
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      gradient: LinearGradient(colors: [
                        const Color(0xffA2834D),
                        const Color(0xffBC9A5F)
                      ])),
                  child: Text(
                    "Download My Resume",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
