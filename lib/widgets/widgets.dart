import 'package:ecommerce/utils/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../pages/info_page.dart';

class MyContainer extends StatelessWidget {
  MyContainer({
    required this.text,
    required this.imagePath,
    Key? key,
  }) : super(key: key);

  String text;
  String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey, borderRadius: BorderRadius.circular(16), image: DecorationImage(image: NetworkImage(imagePath), fit: BoxFit.fitWidth)),
      width: 280,
      height: 180,
      margin: EdgeInsets.only(left: 20, top: 25, right: 20),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            text,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 4),
          Text(
            'On everything today',
            style: TextStyle(fontSize: 20, letterSpacing: 1.5),
          ),
          SizedBox(height: 12),
          Text(
            'With code: rikafashion2021',
            style: TextStyle(fontSize: 14, color: Colors.white54),
          ),
          SizedBox(height: 20),
          Container(
            decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(30)),
            width: 90,
            height: 30,
            child: Padding(
              padding: EdgeInsets.only(left: 19, top: 5),
              child: Text('Get now', style: TextStyle(color: Colors.white)),
            ),
          )
        ]),
      ),
    );
  }
}

class MyContainer2 extends StatelessWidget {
  MyContainer2({
    required this.text1,
    required this.text2,
    required this.text3,
    Key? key,
  }) : super(key: key);

  String text1;
  String text2;
  String text3;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(16)),
          width: 173,
          height: 180,
          margin: EdgeInsets.only(left: 15, top: 25),
          child: Padding(
            padding: EdgeInsets.only(left: 105, bottom: 140, top: 15),
            child: SvgPicture.asset(
              MyIcons.firstSvg3,
              width: 30,
              height: 30,
            ),
          ),
        ),
        SizedBox(height: 10),
        Text(
          text1,
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        SizedBox(height: 5),
        Text(
          text2,
          style: TextStyle(color: Colors.grey),
        ),
        SizedBox(height: 5),
        Text(
          text3,
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}

class MyContainer3 extends StatelessWidget {
  MyContainer3({
    required this.text1,
    required this.text2,
    required this.text3,
    required this.text4,
    required this.imagePath,
    Key? key,
  }) : super(key: key);

  String text1;
  String text2;
  String text3;
  String text4;
  String imagePath;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [BoxShadow(blurRadius: 10, color: Color.fromARGB(255, 211, 210, 210))]),
        width: 340,
        height: 90,
        margin: EdgeInsets.only(top: 10, left: 20, right: 20),
        child: Row(children: [
          SizedBox(width: 10),
          Container(
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(image: NetworkImage(imagePath), fit: BoxFit.cover)),
            width: 70,
            height: 70,
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: SizedBox(
              width: 270,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 6),
                  Text(
                    '\$' + text3,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                  ),
                  SizedBox(height: 7),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset(MyIcons.firstSvg4),
                      SizedBox(width: 7),
                      Text(
                        '($text4)',
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}

List list = [
  'tag1',
  'tag2',
  'tag3',
  'tag4',
  'tag5',
  'tag6',
  'tag7',
  'tag8',
  'tag9',
  'tag10',
  'tag11',
  'tag12',
  'tag13',
  'tag14',
  'tag15',
  'tag16',
  'tag17',
  'tag18',
  'tag19',
  'tag20',
];
