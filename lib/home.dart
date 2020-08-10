import 'package:badges/badges.dart';
import 'package:diamond_notched_fab/diamond_fab_notched_shape.dart';
import 'package:diamond_notched_fab/diamond_notched_fab.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

List<Story> _story = [
  Story('assets/images/5 (1).jpg', 'Monica', Color(0xFF8e44ad)),
  Story('assets/images/8.jpg', 'Sophi', Colors.grey),
  Story('assets/images/8i.jpg', 'Vidhu', Color(0xFF8e44ad)),
  Story('assets/images/14.jpg', 'Priya', Colors.grey),
  Story('assets/images/DSC4604.jpg', 'Mayu', Color(0xFF8e44ad)),
  Story('assets/images/DSC5543.jpg', 'Dhruvi', Colors.grey)
];

List<Post> _post = [
  Post('assets/images/1 (2).jpg', 'Monica', 'Dubai', '5 min ago',
      'assets/images/DSC8174.jpg', '112', '85'),
  Post('assets/images/DSC8231.jpg', 'Sophiya', 'Bangkok', '1 mins ago',
      'assets/images/DSC8215.jpg', '225', '100'),
  Post('assets/images/DSC8205.jpg', 'Aashruti', 'Caliphis', '10 sec. ago',
      'assets/images/DSC4604.jpg', '1411', '631'),
  Post('assets/images/both-3.jpg', 'Binu', 'New York', '10 sec. ago',
      'assets/images/both-6.jpg', '9111', '31'),
  Post('assets/images/DSC8210.jpg', 'vidhu', 'Londan', '2 hour ago',
      'assets/images/DSC8196.jpg', '19k', '4k'),
  Post('assets/images/IMG_3326.jpg', 'Ruhani', 'Chicago', '1 hour ago',
      'assets/images/IMG_3396.jpg', '111', '31'),
  Post('assets/images/IMG_5971.jpg', 'Jensi', 'New Jersey', 'recent ',
      'assets/images/IMG_6170.jpg', '9', '1'),
  Post('assets/images/kynd-2.jpeg', 'Hiral', 'Wisconsin', '15 mins. ago',
      'assets/images/MG_0842.jpg', '10k', '5k'),
];

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text(
            'Instagram',
            style: TextStyle(
                fontFamily: 'Pacifico', fontSize: 22, letterSpacing: 2),
          ),
          actions: [
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 0.5),
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: Offset(0, 0)),
                  ]),
              child: Align(
                heightFactor: 1,
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/1.jpg'),
                ),
              ),
            ),
            SizedBox(
              width: 12,
            ),
          ],
        ),
        body: Container(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                Container(
                    height: MediaQuery.of(context).size.height / 6,
                    child: ListView(
                      shrinkWrap: true,
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      children: _story.map((s) {
                        return _story[0] == s
                            ? Column(
                                children: [
                                  Stack(children: [
                                    Container(
                                      child: Container(
                                        margin: EdgeInsets.symmetric(
                                            vertical: 10, horizontal: 10),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(65),
                                            border: Border.all(
                                                color: Colors.grey, width: 1.5),
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.grey,
                                                  offset: Offset(0, 0),
                                                  spreadRadius: 2,
                                                  blurRadius: 10)
                                            ]),
                                        child: Container(
                                          padding: EdgeInsets.all(1.5),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(65),
                                            child: Image(
                                              image: AssetImage(
                                                'assets/images/both-9.jpg',
                                              ),
                                              fit: BoxFit.cover,
                                              height: 65,
                                              width: 65,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      right: 5,
                                      bottom: 5,
                                      child: Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            color: Colors.blueGrey),
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        ),
                                      ),
                                    )
                                  ]),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    'Your Story',
                                    style: TextStyle(fontSize: 16),
                                  )
                                ],
                              )
                            : Column(
                                children: [
                                  Container(
                                    child: Container(
                                      margin: EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 10),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(65),
                                          border: Border.all(
                                              color: s.border, width: 1.5),
                                          boxShadow: [
                                            BoxShadow(
                                                color: s.border,
                                                offset: Offset(0, 0),
                                                spreadRadius: 2,
                                                blurRadius: 10)
                                          ]),
                                      child: Container(
                                        padding: EdgeInsets.all(1.5),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(65),
                                          child: Image(
                                            image: AssetImage(
                                              s.image,
                                            ),
                                            fit: BoxFit.cover,
                                            height: 65,
                                            width: 65,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    s.name,
                                    style: TextStyle(fontSize: 16),
                                  )
                                ],
                              );
                      }).toList(),
                    )),
                ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  physics: NeverScrollableScrollPhysics(),
                  children: _post.map((p) {
                    return Container(
                      height: MediaQuery.of(context).size.height / 1.4,
                      width: MediaQuery.of(context).size.width,
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFF121212),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundImage: AssetImage(p.profile),
                                radius: 28,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    p.name,
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    p.location,
                                    style: TextStyle(color: Colors.grey),
                                  )
                                ],
                              ),
                              Spacer(),
                              Column(
                                children: [
                                  SizedBox(
                                    height: 36,
                                  ),
                                  Text(p.time,
                                      style: TextStyle(color: Colors.grey))
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height / 2,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                image: DecorationImage(
                                    image: AssetImage(p.post),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Container(
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    border: Border.all(
                                        color: Colors.pink, width: 4)),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(p.likes),
                              SizedBox(
                                width: 40,
                              ),
                              Container(
                                width: 25,
                                height: 25,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        color: Colors.deepOrange, width: 3.5)),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(p.comments)
                            ],
                          )
                        ],
                      ),
                    );
                  }).toList(),
                )
              ],
            ),
          ),
        ),
        floatingActionButton: DiamondNotchedFab(
          child: Icon(
            Icons.add,
            color: Colors.white,
            size: 30,
          ),
          foregroundColor: Colors.teal,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          color: Color(0xFF212121),
          shape: DiamondFabNotchedShape(),
          notchMargin: 10,
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    MaterialButton(
                      minWidth: 60,
                      child: Icon(
                        Icons.home,
                        size: 30,
                        color: Colors.blue,
                      ),
                    ),
                    MaterialButton(
                      minWidth: 60,
                      child: Icon(
                        Icons.search,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    MaterialButton(
                        minWidth: 60,
                        child: Badge(
                          child: Icon(
                            Icons.favorite_border,
                            color: Colors.white,
                            size: 30,
                          ),
                          showBadge: true,
                          badgeColor: Colors.red,
                          badgeContent: Text('4'),
                        )),
                    MaterialButton(
                        minWidth: 60,
                        child: Container(
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey,
                                      offset: Offset(0, 0),
                                      blurRadius: 5,
                                      spreadRadius: 1)
                                ],
                                border:
                                    Border.all(color: Colors.black, width: 0.5),
                                shape: BoxShape.circle),
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/DSC8174.jpg'),
                              radius: 15,
                            ))),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Story {
  final String image;
  final String name;
  final Color border;
  Story(this.image, this.name, this.border);
}

class Post {
  final String profile;
  final String name;
  final String location;
  final String time;
  final String post;
  final String likes;
  final String comments;

  Post(this.profile, this.name, this.location, this.time, this.post, this.likes,
      this.comments);
}
