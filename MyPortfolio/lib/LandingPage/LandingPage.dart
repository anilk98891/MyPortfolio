import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  List<Widget> pageChildren(double width) {
    return <Widget>[
      Container(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Full StackDeveloper",
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text(
                "I am ambitious towards for my passtion and my passion one only coding, always believe in hardwork with smartwork as well.Curious about how the things happens.Want's to help other people out there for creating them better application to make there life easier. Accept challenges!!",
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                "Checkout My Open Source Profile's Over",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  color: Colors.white,
                  child: Text(
                    "StackOverflow",
                    style: TextStyle(color: Colors.pink),
                  ),
                  onPressed: () async {
                    final url =
                        "https://stackoverflow.com/users/5137539/anil-kumar?tab=profile";
                    if (await canLaunch(url)) {
                      await launch(
                        url,
                      );
                    }
                  }),
            ),
            MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                color: Colors.white,
                child: Text(
                  "GitHub",
                  style: TextStyle(color: Colors.pink),
                ),
                onPressed: () async {
                  final url = "https://github.com/anilk98891?tab=repositories";
                  if (await canLaunch(url)) {
                    await launch(
                      url,
                    );
                  }
                }),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                "or\nConnect on",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
            MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                color: Colors.white,
                child: Text(
                  "LinkedIn",
                  style: TextStyle(color: Colors.pink),
                ),
                onPressed: () async {
                  final url = "https://www.linkedin.com/in/anilk98891/";
                  if (await canLaunch(url)) {
                    await launch(
                      url,
                    );
                  }
                }),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Image.asset(
          "images/lp_image.png",
          width: width,
        ),
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: pageChildren(constraints.biggest.width / 2),
          );
        } else {
          return Column(
            children: pageChildren(constraints.biggest.width),
          );
        }
      },
    );
  }
}
