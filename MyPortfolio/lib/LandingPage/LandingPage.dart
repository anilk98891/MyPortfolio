import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingPage extends StatelessWidget {
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
                "I am ambitious towards for my passion, always believe in hardwork with smartwork.Curious about how the things happen.",
                style: TextStyle(fontSize: 12, color: Colors.white),
              ),
            ),
            MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              color: Colors.white,
              child: Text(
                "My Work",
                style: TextStyle(color: Colors.pink),
              ),
              onPressed: () {},
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                "Checkout my profiles over :",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical:8.0),
              child: InkWell(
                child: Text('StackOverflow',style: TextStyle(color: Colors.white),),
                onTap: () async {
                  final url = "https://stackoverflow.com/users/5137539/anil-kumar?tab=profile";
                  if (await canLaunch(url)) {
                    await launch(
                      url,
                    );
                  }
                },
              ),
            ),
            InkWell(
              child: Text('GitHub',style: TextStyle(color: Colors.white),),
              onTap: () async {
                final url = "https://github.com/anilk98891?tab=repositories";
                if (await canLaunch(url)) {
                  await launch(
                    url,
                    forceSafariVC: false,
                  );
                }
              },
            ),
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
