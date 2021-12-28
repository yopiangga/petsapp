import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int activeMenu = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("hallo"),
      // ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Color(0xff1A2E35).withOpacity(0.05),
            spreadRadius: 3,
            blurRadius: 12,
            offset: Offset(3, 0), // changes position of shadow
          ),
        ]),
        child: Row(
          children: [
            BottomNavBar(icon: Icons.home, name: "Home", index: 0),
            BottomNavBar(icon: Icons.article, name: "Articles", index: 1),
            BottomNavBar(icon: Icons.search, name: "Search", index: 2),
            BottomNavBar(
                icon: Icons.notifications, name: "Notifications", index: 3),
            BottomNavBar(icon: Icons.person, name: "Profile", index: 4),
          ],
        ),
      ),
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
                      image: "assets/images/walkgroup2.png",
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
                      image: "assets/images/walkgroup2.png",
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

  GestureDetector BottomNavBar(
      {IconData icon = Icons.home, int index = 0, String name = ""}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          activeMenu = index;
        });
      },
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width / 5,
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color:
                  activeMenu == index ? Color(0xff00B7B7) : Color(0xffB8BEC0),
              size: 28,
            ),
            Text(
              name,
              style: TextStyle(
                  color: activeMenu == index
                      ? Color(0xff00B7B7)
                      : Color(0xffB8BEC0),
                  fontWeight:
                      activeMenu == index ? FontWeight.bold : FontWeight.normal,
                  fontSize: 12),
            )
          ],
        ),
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
