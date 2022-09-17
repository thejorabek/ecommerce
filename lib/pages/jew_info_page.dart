import 'package:ecommerce/models/jewelery_model.dart';
import 'package:flutter/material.dart';

class JewInfo extends StatefulWidget {
  JewInfo({Key? key, required this.info}) : super(key: key);

  JeweleryModel info;
  @override
  State<JewInfo> createState() => _JewInfoState();
}

class _JewInfoState extends State<JewInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Info Page')),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(widget.info.image.toString()))),
                width: 250,
                height: 250,
              ),
              SizedBox(height: 20),
              Text(
                widget.info.title.toString(),
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
              ),
              SizedBox(height: 20),
              Text(
                widget.info.description.toString(),
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
      ),
    );
  }
}
