import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  List cateNames = [
    "Classes",
    "Category",
    "Course",
    "Book Store",
    "Live Course",
    "LeaderBoard",
  ];

  List<Color> cateColors = [
    Color(0xff6fe08d),
    Color(0xffffcf2f),
    Color(0xff61bdfd),
    Color(0xfffc7f7f),
    Color(0xffcb84fb),
    Color(0xff78e667),
  ];

  List<Icon> cateIcons = [
    Icon(
      Icons.video_library,
      color: Colors.white,
      size: 35,
    ),
    Icon(
      Icons.category,
      color: Colors.white,
      size: 35,
    ),
    Icon(
      Icons.assignment,
      color: Colors.white,
      size: 35,
    ),
    Icon(
      Icons.store,
      color: Colors.white,
      size: 35,
    ),
    Icon(
      Icons.play_circle_fill,
      color: Colors.white,
      size: 35,
    ),
    Icon(
      Icons.emoji_events,
      color: Colors.white,
      size: 35,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Stack(
              children: [
                Container(
                  padding:
                      EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 10),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 3.32,
                  decoration: BoxDecoration(
                    color: Color(0xff674aef),
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(70)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Icon(
                              Icons.sort,
                              color: Colors.white,
                              size: 40,
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                              image: DecorationImage(
                                image: AssetImage("IMAGES/Без названия.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 1),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Dear Alex",
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 1),
                          Text(
                            " Last Update: 18 Nov 2023",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white54,
                              letterSpacing: 1,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 1),
                      Container(
                        margin: EdgeInsets.only(top: 5, bottom: 1),
                        width: MediaQuery.of(context).size.width,
                        height: 55,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search here...",
                            hintStyle: TextStyle(
                              color: Colors.black.withOpacity(0.5),
                            ),
                            prefixIcon: Icon(Icons.search, size: 25),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 1.431,
                decoration: BoxDecoration(
                  color: Color(0xff674aef),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: MediaQuery.of(context).size.height / 1.43,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(top: 30),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(70),
                    )),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      GridView.builder(
                        itemCount: cateNames.length,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 1.2,
                        ),
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                  color: cateColors[index],
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                  child: cateIcons[index],
                                ),
                              ),
                              SizedBox(height: 1),
                              Text(
                                cateNames[index],
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black.withOpacity(0.6),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
