import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CategoriesScroller extends StatefulWidget {
  const CategoriesScroller();

  @override
  _CategoriesScrollerState createState() => _CategoriesScrollerState();
}

class _CategoriesScrollerState extends State<CategoriesScroller> {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    ScreenUtil.init(context,
        width: _width, height: _height, allowFontScaling: true);
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 15, right: 0),
          height: 100,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/HJ_JC_03.jpg"),
                        fit: BoxFit.fill)),
                child: Padding(
                    padding: EdgeInsets.only(left: 15, top: 70),
                    child: Text(
                      "Burger".toUpperCase(),
                      style: TextStyle(
                          fontSize: 10,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )),
              ),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/HJ_JC_03.jpg"),
                        fit: BoxFit.fill)),
                child: Padding(
                  padding: EdgeInsets.only(left: 15, top: 70),
                  child: Text("DONUT".toUpperCase(),
                      style: TextStyle(
                          fontSize: 10,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/HJ_JC_03.jpg"),
                        fit: BoxFit.fill)),
                child: Padding(
                  padding: EdgeInsets.only(left: 15, top: 70),
                  child: Text("PIZZA".toUpperCase(),
                      style: TextStyle(
                          fontSize: 10,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/HJ_JC_03.jpg"),
                        fit: BoxFit.fill)),
                child: Padding(
                    padding: EdgeInsets.only(left: 15, top: 70),
                    child: Text("PRETZEL".toUpperCase(),
                        style: TextStyle(
                            fontSize: 10,
                            color: Colors.white,
                            fontWeight: FontWeight.bold))),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: <Widget>[
              Text('Trending',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              Spacer(),
              Text(
                'View All',
                style:
                TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        Container(
          height: 190,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              cardList(),
              cardList(),
              cardList(),
              cardList(),
              cardList(),
            ],
          ),
        ),
      ],
    );
  }

  Widget cardList() {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    ScreenUtil.init(context,
        width: _width, height: _height, allowFontScaling: true);

    return Container(
      padding: EdgeInsets.only(left: 10, right: 10),
      width: _width - _width / 6,
      child: Stack(
        children: <Widget>[
          Card(
            elevation: 3.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8))),
            child: Column(
              children: <Widget>[
                Container(
                  height: 130,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/HJ_JC_03.jpg"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(
                      left: 80.w,
                      top: 1.h,
                      right: 8.0.w,
                    ),
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Pizza Hut',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1,
                                  fontSize: 16.sp),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 1.0.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Pizza',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1,
                                  fontSize: 12.sp,
                                  color: Colors.black45),
                            ),
                          ],
                        ),
                      ],
                    ))
              ],
            ),
          ),
          Positioned(
              bottom: 10,
              left: 15,
              child: Container(
                height: 60.h,
                width: 60.w,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/HJ_JC_03.jpg'),
                    radius: 28,
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
