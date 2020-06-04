import 'package:flutter/material.dart';
import 'package:new_project_test/Model/MyWorkModel.dart';
import 'package:new_project_test/NavBar/NavBarMyWork.dart';
import 'package:new_project_test/NavBar/navBar.dart';

class MyWorkScreen extends StatefulWidget {
  @override
  _MyWorkScreenState createState() => _MyWorkScreenState();
}

class _MyWorkScreenState extends State<MyWorkScreen> {
  List<MyWorkModelClass> workModel = List<MyWorkModelClass>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    workModel.add(MyWorkModelClass(['images/Rise3.jpeg'], 'RiseSmart'));
    workModel.add(MyWorkModelClass(['images/apptemp2.jpeg'], 'AppTemplate'));
    workModel.add(MyWorkModelClass(['images/lp_image.png'], '18th Street'));
    workModel.add(MyWorkModelClass(['images/nuna.jpeg'], 'WingMatch'));
    workModel.add(MyWorkModelClass(['images/Eat1.png'], 'EatNaked'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromRGBO(195, 20, 50, 1),
          Color.fromRGBO(36, 11, 54, 1)
        ])),
        child: ListView(
          children: [
            Column(
              children: [
                NavBarMyWork(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: LayoutBuilder(builder: (context, constraint) {
                    if (constraint.maxWidth >= 800) {
                      return DesktopGrid(workModel);
                    } else {
                      return MobileGrid(workModel);
                    }
                  }),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class DesktopGrid extends StatelessWidget {
  final List<MyWorkModelClass> workDetailsObj;

  DesktopGrid(this.workDetailsObj);

  @override
  Widget build(BuildContext context) {
    return new Container(
      height: (workDetailsObj.length * 170).toDouble(),
      child: GridView.builder(
          itemCount: workDetailsObj.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, crossAxisSpacing: 10, mainAxisSpacing: 10),
          itemBuilder: (context, index) {
            return GestureDetector(
              child: new Container(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(5, 0, 5, 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                          child: Image.asset(
                              workDetailsObj[index].images[0]
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        this.workDetailsObj[index].names,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 19.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                alignment: Alignment.center,
              ),
              onTap: () {
                Navigator.pushNamed(context, '/subselection',
                    arguments: workDetailsObj[index]);
              },
            );
          }),
    );
  }
}
class MobileGrid extends StatelessWidget {
  final List<MyWorkModelClass> workDetailsObj;

  MobileGrid(this.workDetailsObj);

  @override
  Widget build(BuildContext context) {
    return new Container(
      height: (MediaQuery.of(context).size.height - 30).toDouble(),
      child: GridView.builder(
          itemCount: workDetailsObj.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
          itemBuilder: (context, index) {
            return GestureDetector(
              child: new Container(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(5, 0, 5, 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                          child: Image.asset(
                              workDetailsObj[index].images[0]
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        this.workDetailsObj[index].names,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 19.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                alignment: Alignment.center,
              ),
              onTap: () {
                Navigator.pushNamed(context, '/subselection',
                    arguments: workDetailsObj[index]);
              },
            );
          }),
    );
  }
}
