import 'package:backdrop/backdrop.dart';
import 'package:ecommerce/models/ecommerce_model.dart';
import 'package:ecommerce/models/electronics_model.dart';
import 'package:ecommerce/models/jewelery_model.dart';
import 'package:ecommerce/models/mens_model.dart';
import 'package:ecommerce/models/womens_model.dart';
import 'package:ecommerce/pages/electronics_info.dart';
import 'package:ecommerce/pages/info_page.dart';
import 'package:ecommerce/pages/jew_info_page.dart';
import 'package:ecommerce/pages/mens_info_page.dart';
import 'package:ecommerce/pages/women_info_page.dart';
import 'package:ecommerce/services/add_new_product_service.dart';
import 'package:ecommerce/services/ecommerce_service.dart';
import 'package:ecommerce/services/electronics_service.dart';
import 'package:ecommerce/services/jewelery_service.dart';
import 'package:ecommerce/services/mens_service.dart';
import 'package:ecommerce/services/womens_service.dart';
import 'package:ecommerce/utils/icons.dart';
import 'package:ecommerce/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

final pageCon = PageController();
String matn = '0';
int index = 0;
final titleCon = TextEditingController();
final priceCon = TextEditingController();
final descCon = TextEditingController();
final imageCon = TextEditingController();
final categCon = TextEditingController();

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BackdropScaffold(
      headerHeight: 500,
      backLayer: Container(
        width: 500,
        height: 400,
        color: Colors.black,
        child: Column(
          children: [
            RadioListTile(
              value: '0',
              activeColor: Colors.white,
              groupValue: matn,
              onChanged: (value) {
                setState(() {
                  matn = value.toString();
                });
              },
              title: Text(
                "All Products",
                style: TextStyle(color: Colors.white),
              ),
            ),
            RadioListTile(
              value: '1',
              activeColor: Colors.white,
              groupValue: matn,
              onChanged: (value) {
                setState(() {
                  matn = value.toString();
                });
              },
              title: Text(
                "Jewelery",
                style: TextStyle(color: Colors.white),
              ),
            ),
            RadioListTile(
              value: '2',
              activeColor: Colors.white,
              groupValue: matn,
              onChanged: (value) {
                setState(() {
                  matn = value.toString();
                });
              },
              title: Text(
                "Electronics",
                style: TextStyle(color: Colors.white),
              ),
            ),
            RadioListTile(
              value: '3',
              activeColor: Colors.white,
              groupValue: matn,
              onChanged: (value) {
                setState(() {
                  matn = value.toString();
                });
              },
              title: Text(
                "Men's clothing",
                style: TextStyle(color: Colors.white),
              ),
            ),
            RadioListTile(
              value: '4',
              activeColor: Colors.white,
              groupValue: matn,
              onChanged: (value) {
                setState(() {
                  matn = value.toString();
                });
              },
              title: Text(
                "Women's clothing",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Divider(
              color: Colors.white,
              thickness: 0.7,
              endIndent: 25,
              indent: 25,
            ),
            SizedBox(height: 3),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(color: index == 0 ? Colors.white : Colors.grey, borderRadius: BorderRadius.circular(20)),
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
                      index = 0;
                    });
                  },
                ),
                GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(color: index == 3 ? Colors.white : Colors.grey, borderRadius: BorderRadius.circular(20)),
                    width: 50,
                    height: 35,
                    child: Center(
                        child: Text(
                      '3',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    )),
                  ),
                  onTap: () {
                    setState(() {
                      index = 3;
                    });
                  },
                ),
                GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(color: index == 7 ? Colors.white : Colors.grey, borderRadius: BorderRadius.circular(20)),
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
                      index = 7;
                    });
                  },
                ),
                GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(color: index == 10 ? Colors.white : Colors.grey, borderRadius: BorderRadius.circular(20)),
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
                      index = 10;
                    });
                  },
                ),
                GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(color: index == 15 ? Colors.white : Colors.grey, borderRadius: BorderRadius.circular(20)),
                    width: 50,
                    height: 35,
                    child: Center(
                        child: Text(
                      '15',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    )),
                  ),
                  onTap: () {
                    setState(() {
                      index = 15;
                    });
                  },
                ),
              ],
            )
          ],
        ),
      ),
      frontLayer: Scaffold(
          appBar: AppBar(
            leading: BackdropToggleButton(
              icon: AnimatedIcons.list_view,
              color: Colors.black,
            ),
            title: Text(
              'Filter',
              style: TextStyle(color: Colors.black),
            ),
            backgroundColor: Color.fromARGB(0, 24, 0, 0),
            elevation: 0,
            actions: [
              IconButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                              title: Text('Add new product'),
                              titlePadding: EdgeInsets.only(left: 70, top: 20),
                              content: SizedBox(
                                width: 250,
                                height: 350,
                                child: Column(children: [
                                  Divider(
                                    color: Colors.black,
                                    thickness: 0.7,
                                  ),
                                  SizedBox(height: 10),
                                  SizedBox(
                                      height: 45,
                                      child: TextFormField(
                                          controller: titleCon,
                                          decoration: InputDecoration(
                                              border: OutlineInputBorder(), hintText: 'title', contentPadding: EdgeInsets.only(top: 5, left: 15)))),
                                  SizedBox(height: 10),
                                  SizedBox(
                                      height: 45,
                                      child: TextFormField(
                                          controller: priceCon,
                                          decoration: InputDecoration(
                                              border: OutlineInputBorder(), hintText: 'price', contentPadding: EdgeInsets.only(top: 5, left: 15)))),
                                  SizedBox(height: 10),
                                  SizedBox(
                                      height: 45,
                                      child: TextFormField(
                                          controller: descCon,
                                          decoration: InputDecoration(
                                              border: OutlineInputBorder(),
                                              hintText: 'description',
                                              contentPadding: EdgeInsets.only(top: 5, left: 15)))),
                                  SizedBox(height: 10),
                                  SizedBox(
                                      height: 45,
                                      child: TextFormField(
                                          controller: imageCon,
                                          decoration: InputDecoration(
                                              border: OutlineInputBorder(), hintText: 'image', contentPadding: EdgeInsets.only(top: 5, left: 15)))),
                                  SizedBox(height: 10),
                                  SizedBox(
                                      height: 45,
                                      child: TextFormField(
                                          controller: categCon,
                                          decoration: InputDecoration(
                                              border: OutlineInputBorder(),
                                              hintText: 'category',
                                              contentPadding: EdgeInsets.only(top: 5, left: 15)))),
                                  SizedBox(height: 10),
                                  ElevatedButton(
                                      onPressed: () async {
                                        await AddProduct.addData();
                                      },
                                      child: Text('Add'))
                                ]),
                              ),
                            ));
                  },
                  icon: Icon(
                    Icons.add,
                    color: Colors.black,
                    size: 30,
                  ))
            ],
          ),
          body: returnFuture()),
    );
  }
}

returnFuture() {
  if (matn == '0') {
    return FutureBuilder(
      future: GetAllProducts.getData(),
      builder: (context, AsyncSnapshot<List<EcommerceModel>> snapshot) {
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
              SizedBox(
                height: 210,
                child: PageView(
                  controller: pageCon,
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: [
                    MyContainer(text: '50% Off', imagePath: snapshot.data![0].image.toString()),
                    MyContainer(text: '70% Off', imagePath: snapshot.data![1].image.toString()),
                    MyContainer(text: '90% Off', imagePath: snapshot.data![2].image.toString()),
                  ],
                ),
              ),
              SizedBox(height: 5),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SmoothPageIndicator(
                      controller: pageCon, // PageController
                      count: 3,
                      effect: JumpingDotEffect(
                        activeDotColor: Colors.black,
                        dotHeight: 10,
                        dotWidth: 10,
                        jumpScale: .7,
                        verticalOffset: 15,
                      ),
                      onDotClicked: (index) {})
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'All Products',
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
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
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
                                image: DecorationImage(image: NetworkImage(snapshot.data![index].image.toString()), fit: BoxFit.cover)),
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
                                    snapshot.data![index].title.toString(),
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(height: 6),
                                  Text(
                                    '\$' + snapshot.data![index].price.toString(),
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
                                        snapshot.data![index].rating!.rate.toString(),
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
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => InfoPage(
                                      info: snapshot.data![index],
                                    )));
                      },
                    );
                  })
            ]),
          ]);
        }
      },
    );
  } else if (matn == '1') {
    return FutureBuilder(
      future: GetJewelery.getJewelery(),
      builder: (context, AsyncSnapshot<List<JeweleryModel>> snapshot) {
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
              SizedBox(
                height: 210,
                child: PageView(
                  controller: pageCon,
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: [
                    MyContainer(text: '50% Off', imagePath: snapshot.data![0].image.toString()),
                    MyContainer(text: '70% Off', imagePath: snapshot.data![1].image.toString()),
                    MyContainer(text: '90% Off', imagePath: snapshot.data![2].image.toString()),
                  ],
                ),
              ),
              SizedBox(height: 5),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SmoothPageIndicator(
                      controller: pageCon, // PageController
                      count: 3,
                      effect: JumpingDotEffect(
                        dotHeight: 10,
                        activeDotColor: Colors.black,
                        dotWidth: 10,
                        jumpScale: .7,
                        verticalOffset: 15,
                      ),
                      onDotClicked: (index) {})
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Jewelery',
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
                                image: DecorationImage(image: NetworkImage(snapshot.data![index].image.toString()), fit: BoxFit.cover)),
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
                                    snapshot.data![index].title.toString(),
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(height: 6),
                                  Text(
                                    '\$' + snapshot.data![index].price.toString(),
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
                                        snapshot.data![index].rating!.rate.toString(),
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
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => JewInfo(info: snapshot.data![index])));
                      },
                    );
                  })
            ]),
          ]);
        }
      },
    );
  } else if (matn == '2') {
    return FutureBuilder(
      future: GetElectronics.getElectronics(),
      builder: (context, AsyncSnapshot<List<Electronics>> snapshot) {
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
              SizedBox(
                height: 210,
                child: PageView(
                  controller: pageCon,
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: [
                    MyContainer(text: '50% Off', imagePath: snapshot.data![0].image.toString()),
                    MyContainer(text: '70% Off', imagePath: snapshot.data![1].image.toString()),
                    MyContainer(text: '90% Off', imagePath: snapshot.data![2].image.toString()),
                  ],
                ),
              ),
              SizedBox(height: 5),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SmoothPageIndicator(
                      controller: pageCon, // PageController
                      count: 3,
                      effect: JumpingDotEffect(
                        dotHeight: 10,
                        activeDotColor: Colors.black,
                        dotWidth: 10,
                        jumpScale: .7,
                        verticalOffset: 15,
                      ),
                      onDotClicked: (index) {})
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Electronics',
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
                                image: DecorationImage(image: NetworkImage(snapshot.data![index].image.toString()), fit: BoxFit.cover)),
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
                                    snapshot.data![index].title.toString(),
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(height: 6),
                                  Text(
                                    '\$' + snapshot.data![index].price.toString(),
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
                                        snapshot.data![index].rating!.rate.toString(),
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
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ElectronicsInfo(info: snapshot.data![index])));
                      },
                    );
                  })
            ]),
          ]);
        }
      },
    );
  } else if (matn == '3') {
    return FutureBuilder(
      future: GetMensClothing.getData(),
      builder: (context, AsyncSnapshot<List<MensModel>> snapshot) {
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
              SizedBox(
                height: 210,
                child: PageView(
                  controller: pageCon,
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: [
                    MyContainer(text: '50% Off', imagePath: snapshot.data![0].image.toString()),
                    MyContainer(text: '70% Off', imagePath: snapshot.data![1].image.toString()),
                    MyContainer(text: '90% Off', imagePath: snapshot.data![2].image.toString()),
                  ],
                ),
              ),
              SizedBox(height: 5),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SmoothPageIndicator(
                      controller: pageCon, // PageController
                      count: 3,
                      effect: JumpingDotEffect(
                        dotHeight: 10,
                        activeDotColor: Colors.black,
                        dotWidth: 10,
                        jumpScale: .7,
                        verticalOffset: 15,
                      ),
                      onDotClicked: (index) {})
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Electronics',
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
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
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
                                image: DecorationImage(image: NetworkImage(snapshot.data![index].image.toString()), fit: BoxFit.cover)),
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
                                    snapshot.data![index].title.toString(),
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(height: 6),
                                  Text(
                                    '\$' + snapshot.data![index].price.toString(),
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
                                        snapshot.data![index].rating!.rate.toString(),
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
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => MensInfo(info: snapshot.data![index])));
                      },
                    );
                  })
            ]),
          ]);
        }
      },
    );
  } else if (matn == '4') {
    return FutureBuilder(
      future: GetWomensClothing.getData(),
      builder: (context, AsyncSnapshot<List<WomensModel>> snapshot) {
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
              SizedBox(
                height: 210,
                child: PageView(
                  controller: pageCon,
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: [
                    MyContainer(text: '50% Off', imagePath: snapshot.data![0].image.toString()),
                    MyContainer(text: '70% Off', imagePath: snapshot.data![1].image.toString()),
                    MyContainer(text: '90% Off', imagePath: snapshot.data![2].image.toString()),
                  ],
                ),
              ),
              SizedBox(height: 5),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SmoothPageIndicator(
                      controller: pageCon, // PageController
                      count: 3,
                      effect: JumpingDotEffect(
                        dotHeight: 10,
                        activeDotColor: Colors.black,
                        dotWidth: 10,
                        jumpScale: .7,
                        verticalOffset: 15,
                      ),
                      onDotClicked: (index) {})
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Women\'s clothing',
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
                                image: DecorationImage(image: NetworkImage(snapshot.data![index].image.toString()), fit: BoxFit.cover)),
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
                                    snapshot.data![index].title.toString(),
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(height: 6),
                                  Text(
                                    '\$' + snapshot.data![index].price.toString(),
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
                                        snapshot.data![index].rating!.rate.toString(),
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
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => WomensInfo(info: snapshot.data![index])));
                      },
                    );
                  })
            ]),
          ]);
        }
      },
    );
  }
}
