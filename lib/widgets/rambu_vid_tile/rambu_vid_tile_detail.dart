import 'package:flutter/material.dart';
import 'package:lalinapp/groupContentPage/persiapan/persiapan_vidio_page.dart';
import 'package:lalinapp/groupContentPage/rambuPeringatan/rambu_categories/rambu_categori_page.dart';
import 'package:lalinapp/groupContentPage/rambuPeringatan/rambu_vidio_page.dart';

import 'package:lalinapp/pages/textcontent_page.dart';

import 'package:lalinapp/theme.dart';

class RambuVidTileContent extends StatelessWidget {
  String imgUrlContent;
  String title;
  String vidioUrl;
  String contentCount;
  String descCaptionContent;
  String otherImgUrl;
  String otherVidioUrl;
  String otherTitle;
  String otherContentCount;
  String otherDescCaption;

  RambuVidTileContent(
      {this.imgUrlContent,
      this.title,
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
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => RambuVidPage(
                title: title,
                vidioUrl: vidioUrl,
                contentCount: contentCount,
                descCaptionContent: descCaptionContent,
                otherImgUrl: otherImgUrl,
                otherTitle: otherTitle,
                otherVidioUrl: otherVidioUrl,
                otherContentCount: otherContentCount,
                otherDescCaption: otherDescCaption,
              ),
            ));
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 7,
        ),
        width: MediaQuery.of(context).size.width,
        height: 104,
        decoration: BoxDecoration(
          color: whiteColorBg,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 7,
            ),
          ],
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(7.5),
              child: Image.network(
                imgUrlContent,
                height: 88,
                width: 85,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Flexible(
              child: Text(
                // 'Kamu Wajib Punya Surat Izin Mengemudi (SIM)',
                title,
                style: txMedium.copyWith(fontSize: 15, height: 1.5),
              ),
            )
          ],
        ),
      ),
    );
  }
}
