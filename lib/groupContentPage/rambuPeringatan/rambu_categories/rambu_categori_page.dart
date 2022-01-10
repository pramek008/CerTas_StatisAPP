// ignore_for_file: avoid_unnecessary_containers, file_names

import 'package:flutter/material.dart';
import 'package:lalinapp/groupContentPage/rambuPeringatan/rambu_vidio_page.dart';
import 'package:lalinapp/pages/homepage.dart';
import 'package:lalinapp/theme.dart';
import 'package:lalinapp/widgets/rambu_vid_tile/rambu_vid_tile_detail.dart';

class RambuListVidDetail extends StatelessWidget {
  String title;
  String descCaption;

  String imgUrlContent;
  String vidioUrl;
  String contentCount;
  String descCaptionContent;
  String otherImgUrl;
  String otherVidioUrl;
  String otherTitle;
  String otherContentCount;
  String otherDescCaption;

  RambuListVidDetail(
      {this.title,
      this.descCaption,
      this.imgUrlContent,
      this.vidioUrl,
      this.contentCount,
      this.descCaptionContent,
      this.otherImgUrl,
      this.otherVidioUrl,
      this.otherTitle,
      this.otherContentCount,
      this.otherDescCaption});

  @override
  Widget build(BuildContext context) {
    Widget heading() {
      return Container(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
          vertical: 14,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20),
            ),
            gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  greenColor,
                  Color(0xffE1CA9E),
                ])),
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: txBold.copyWith(fontSize: 20),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                    );
                  },
                  child: Icon(
                    Icons.home_outlined,
                    color: blackColor,
                    size: 35,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              descCaption,
              style: txLight.copyWith(fontSize: 14, height: 1.5),
            )
          ],
        ),
      );
    }

    Widget body() {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 17),
        child: SingleChildScrollView(
            child: Column(
          children: [
            RambuVidTileContent(
              imgUrlContent: imgUrlContent,
              title: title,
              vidioUrl: vidioUrl,
              contentCount: contentCount,
              descCaptionContent: descCaptionContent,
              otherImgUrl: otherImgUrl,
              otherVidioUrl: otherVidioUrl,
              otherTitle: otherTitle,
              otherContentCount: otherContentCount,
              otherDescCaption: otherContentCount,
            ),
            SizedBox(
              height: 16,
            ),
          ],
        )),
      );
    }

    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            heading(),
            SizedBox(
              height: 24,
            ),
            body(),
          ],
        ),
      )),
    );
  }
}
