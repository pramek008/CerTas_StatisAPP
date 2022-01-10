// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:lalinapp/model/syarat_data.dart';
import 'package:lalinapp/theme.dart';
import 'package:provider/provider.dart';

class TextContentPage extends StatelessWidget {
  // final SyaratBerkendaraData articleData;
  // TextContentPage({this.articleData});

  final String imageUrl;
  final String title;
  final String content;
  final List<String> text;

  TextContentPage({this.content, this.imageUrl, this.title, this.text});

  @override
  Widget build(BuildContext context) {
    Widget head() {
      return Container(
        child: ClipRRect(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
          child: Image.asset(
            imageUrl,
            height: 230,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
        ),
      );
    }

    Widget dotDetailItem(String text) {
      return Container(
        margin: EdgeInsets.only(top: 16),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Icon(
              Icons.adjust,
              color: greenColor,
              size: 12,
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Expanded(
            child: Text(
              text,
              style: txLight.copyWith(
                fontSize: 14,
                height: 1.4,
              ),
            ),
          )
        ]),
      );
    }

    Widget body() {
      return Container(
        // ignore: prefer_const_constructors
        padding: EdgeInsets.only(
          left: 15,
          right: 15,
          top: 15,
          bottom: 50,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: -12,
                blurRadius: 2,
                offset: Offset.zero),
            // ignore: prefer_const_constructors
            BoxShadow(
              color: Colors.white,
              spreadRadius: -12,
              blurRadius: 12,
            )
          ],
        ),
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                title,
                style: txMedium.copyWith(
                  fontSize: 20,
                ),
              ),
              Divider(
                color: Color(0xffC4C4C4),
                thickness: 1.5,
              ),
              Text(
                content,
                style: txLight.copyWith(
                  fontSize: 14,
                  height: 1.4,
                ),
              ),
              Column(
                children: text.map((e) => dotDetailItem(e)).toList(),
              )
            ],
          ),
        ),
      );
    }

    return Scaffold(
        appBar: AppBar(
          backgroundColor: greenColor,
          title: Text('Syarat Berkendara'),
          centerTitle: true,
        ),
        body: SafeArea(
            child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            head(),
            body(),
          ],
        )));
  }
}
