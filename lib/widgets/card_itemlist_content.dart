import 'package:flutter/material.dart';
import 'package:lalinapp/model/syarat_data.dart';
import 'package:lalinapp/pages/textcontent_page.dart';
// import 'package:lalinapp/pages/vidiocontent_page.dart';
// import 'package:lalinapp/providers/syarat_provider.dart';
import 'package:lalinapp/theme.dart';
import 'package:provider/provider.dart';

class ItemContentTile extends StatelessWidget {
  // final SyaratBerkendaraData articleModel;

  // ItemContentTile({this.articleModel});

  final String title;
  final String imageUrl;
  final String content;
  final List<String> textItem;

  ItemContentTile({this.title, this.imageUrl, this.content, this.textItem});

  @override
  Widget build(BuildContext context) {
    // var syaratProvider = Provider.of<SyaratProvider>(context);

    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => TextContentPage(
                  content: content,
                  imageUrl: imageUrl,
                  title: title,
                  text: textItem
                  // articleData: articleModel,
                  ),
            ));
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 104,
        margin: EdgeInsets.only(bottom: 16),
        padding: EdgeInsets.only(right: 10),
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
            SizedBox(
              width: 7,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(7.5),
              child: Image.asset(
                // 'https://asset.kompas.com/crops/Cp-fe8FUljrgIlGcVOKkJGcB4bc=/15x0:600x390/750x500/data/photo/2019/12/17/5df896712d870.jpg',
                imageUrl,
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
