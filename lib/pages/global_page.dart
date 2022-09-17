import 'package:ecommerce/pages/card_page.dart';
import 'package:ecommerce/pages/home_page.dart';
import 'package:ecommerce/pages/user_page.dart';
import 'package:flutter/material.dart';

class GlobalPage extends StatefulWidget {
  const GlobalPage({Key? key}) : super(key: key);

  @override
  State<GlobalPage> createState() => _GlobalPageState();
}

final pageCon = PageController();
int indexColor = 0;

class _GlobalPageState extends State<GlobalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        PageView(physics: NeverScrollableScrollPhysics(), controller: pageCon, children: [HomePage(), CartPage(), UserPage()]),
        Padding(
          padding: EdgeInsets.only(top: 770, right: 15, left: 15),
          child: Container(
            decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.only(topRight: Radius.circular(25),bottomLeft: Radius.circular(25)),),
            width: 420,
            height: 70,
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      indexColor = 0;
                    });
                    pageCon.jumpToPage(0);
                  },
                  icon: Icon(
                    Icons.home,
                    color: indexColor == 0 ? Colors.white : Colors.grey,
                    size: 30,
                  )),
              IconButton(
                  onPressed: () {
                    setState(() {
                      indexColor = 1;
                    });
                    pageCon.jumpToPage(1);
                  },
                  icon: Icon(
                    Icons.credit_card,
                    color: indexColor == 1 ? Colors.white : Colors.grey,
                    size: 30,
                  )),
              IconButton(
                  onPressed: () {
                    setState(() {
                      indexColor = 2;
                    });
                    pageCon.jumpToPage(2);
                  },
                  icon: Icon(
                    Icons.person,
                    color: indexColor == 2 ? Colors.white : Colors.grey,
                    size: 30,
                  ))
            ]),
          ),
        )
      ]),
    );
  }
}
