import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("hallo"),
      // ),
      bottomNavigationBar: BottomNavBar(),
      backgroundColor: Color(0xFFEFF5F4),
      body: ListView(
        children: [
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.only(left: 25, right: 25, top: 20, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hi, Yopiangga",
                  style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff1A2E35)),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  "Check out the new products, groups.",
                  style: TextStyle(fontSize: 16, color: Color(0xff1A2E35)),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 25, right: 25, top: 20, bottom: 20),
            child: Container(
                height: 70,
                decoration: BoxDecoration(
                  color: Color(0xff00B7B7),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xff00B7B7).withOpacity(0.15),
                      spreadRadius: 15,
                      blurRadius: 20,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Image(
                        image: AssetImage('assets/images/dog1.png'),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: Text(
                          "Lola is lost in your neighborhood! Help us find her!",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      )
                    ],
                  ),
                )),
          ),
          Padding(
            padding: EdgeInsets.only(top: 40, bottom: 20),
            child: Column(children: [
              Padding(
                padding: EdgeInsets.only(right: 25, left: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "WALK GROUPS",
                      style: TextStyle(color: Color(0xff1A2E35), fontSize: 16),
                    ),
                    Text(
                      "See all",
                      style: TextStyle(color: Color(0xff1A2E35), fontSize: 16),
                    )
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CardWalk(
                      title: "Meet our lovely dogs walking with us!",
                      image: "assets/images/walkgroup1.png",
                      place: "Valencia, Spain",
                      member: "8",
                      organized: "Yopiangga",
                    ),
                    CardWalk(
                      title: "Meet our lovely dogs walking with us!",
                      image: "assets/images/walkgroup1.png",
                      place: "Valencia, Spain",
                      member: "8",
                      organized: "Yopiangga",
                    ),
                    SizedBox(
                      width: 25,
                    )
                  ],
                ),
              ),
            ]),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20, bottom: 20),
            child: Column(children: [
              Padding(
                padding: EdgeInsets.only(right: 25, left: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "NEW PRODUCTS",
                      style: TextStyle(color: Color(0xff1A2E35), fontSize: 16),
                    ),
                    Text(
                      "See all",
                      style: TextStyle(color: Color(0xff1A2E35), fontSize: 16),
                    )
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CardWalk(
                      title: "Meet our lovely dogs walking with us!",
                      image: "assets/images/walkgroup1.png",
                      place: "Valencia, Spain",
                      member: "8",
                      organized: "Yopiangga",
                    ),
                    CardWalk(
                      title: "Meet our lovely dogs walking with us!",
                      image: "assets/images/walkgroup1.png",
                      place: "Valencia, Spain",
                      member: "8",
                      organized: "Yopiangga",
                    ),
                    SizedBox(
                      width: 25,
                    )
                  ],
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}

class CardWalk extends StatelessWidget {
  CardWalk(
      {this.title = "",
      this.image = "",
      this.place = "",
      this.member = "",
      this.organized = ""});
  String title;
  String image;
  String place;
  String member;
  String organized;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25, top: 25, bottom: 25),
      width: 323,
      height: 345,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color(0xff1A2E35).withOpacity(0.05),
            spreadRadius: 1,
            blurRadius: 10,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(image),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff1A2E35)),
                    maxLines: 2,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.place),
                          SizedBox(
                            width: 10,
                          ),
                          Text(place)
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Icon(Icons.people),
                          SizedBox(
                            width: 10,
                          ),
                          Text("$member, Member")
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Icon(Icons.account_circle),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Organized by "),
                          Text(
                            organized,
                            style: TextStyle(color: Color(0xff00B7B7)),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60,
        color: Colors.white,
        child: GridView.count(
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: [
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.home,
                    color: Color(0xff00B7B7),
                    size: 32,
                  ),
                  Text(
                    "Home",
                    style: TextStyle(
                        color: Color(0xff00B7B7),
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  )
                ],
              ),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.home,
                    color: Color(0xff00B7B7),
                    size: 32,
                  ),
                  Text(
                    "Home",
                    style: TextStyle(
                        color: Color(0xff00B7B7),
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
