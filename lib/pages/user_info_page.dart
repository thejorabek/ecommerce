import 'package:backdrop/backdrop.dart';
import 'package:ecommerce/models/user_info_model.dart';
import 'package:ecommerce/models/user_model.dart';
import 'package:ecommerce/services/user_info_service.dart';
import 'package:ecommerce/utils/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UserInfoPage extends StatefulWidget {
  UserInfoPage({Key? key,required this.info}) : super(key: key);

  UserModel info;

  @override
  State<UserInfoPage> createState() => _UserInfoPageState();
}

final pageCon = PageController();
String matn = '0';
int userInfoIndex = 0;

class _UserInfoPageState extends State<UserInfoPage> {
  @override
  Widget build(BuildContext context) {
    return BackdropScaffold(
        headerHeight: 760,
        backLayer: Container(
          width: 500,
          height: 100,
          color: Colors.black,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                child: Container(
                  decoration: BoxDecoration(color: userInfoIndex == 0 ? Colors.white : Colors.grey, borderRadius: BorderRadius.circular(20)),
                  width: 50,
                  height: 35,
                  child: Center(
                      child: Text(
                    'All',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  )),
                ),
                onTap: () {
                  setState(() {
                    userInfoIndex = 0;
                  });
                },
              ),
              GestureDetector(
                child: Container(
                  decoration: BoxDecoration(color: userInfoIndex == 4 ? Colors.white : Colors.grey, borderRadius: BorderRadius.circular(20)),
                  width: 50,
                  height: 35,
                  child: Center(
                      child: Text(
                    '4',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  )),
                ),
                onTap: () {
                  setState(() {
                    userInfoIndex = 4;
                  });
                },
              ),
              GestureDetector(
                child: Container(
                  decoration: BoxDecoration(color: userInfoIndex == 7 ? Colors.white : Colors.grey, borderRadius: BorderRadius.circular(20)),
                  width: 50,
                  height: 35,
                  child: Center(
                      child: Text(
                    '7',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  )),
                ),
                onTap: () {
                  setState(() {
                    userInfoIndex = 7;
                  });
                },
              ),
              GestureDetector(
                child: Container(
                  decoration: BoxDecoration(color: userInfoIndex == 10 ? Colors.white : Colors.grey, borderRadius: BorderRadius.circular(20)),
                  width: 50,
                  height: 35,
                  child: Center(
                      child: Text(
                    '10',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  )),
                ),
                onTap: () {
                  setState(() {
                    userInfoIndex = 10;
                  });
                },
              ),
            ],
          ),
        ),
        frontLayer: Scaffold(
            appBar: AppBar(
              leading: BackdropToggleButton(
                icon: AnimatedIcons.list_view,
                color: Colors.black,
              ),
              backgroundColor: Color.fromARGB(0, 24, 0, 0),
              elevation: 0,
              actions: [
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: SvgPicture.asset(
                    MyIcons.firstSvg2,
                    width: 25,
                    height: 25,
                  ),
                )
              ],
            ),
            body: returnFuture()));
  }
}

returnFuture() {
  return FutureBuilder(
    future: UserInfoService.getData(),
    builder: (context, AsyncSnapshot<List<UserInfoModel>> snapshot) {
      if (!snapshot.hasData) {
        return Center(
          child: CircularProgressIndicator(),
        );
      } else if (snapshot.hasError) {
        return Center(
          child: Text('Error occured'),
        );
      } else {
        return ListView(physics: BouncingScrollPhysics(), children: [
          Column(children: [
            Padding(
              padding: EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Users Info',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'View all',
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            ListView.builder(
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
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
                          ),
                          width: 70,
                          height: 70,
                          child: Center(
                              child: Text(
                            snapshot.data![index].id.toString(),
                            style: TextStyle(fontSize: 25),
                          )),
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
                                  snapshot.data![index].products![index].productId.toString(),
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                                ),
                                SizedBox(height: 6),
                                Text(
                                  snapshot.data![index].userId.toString(),
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                                ),
                                SizedBox(height: 7),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      Icons.phone,
                                      size: 15,
                                    ),
                                    SizedBox(width: 7),
                                    Text(
                                      snapshot.data![index].id.toString(),
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
                })
          ]),
        ]);
      }
    },
  );
}
