// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:lalinapp/groupContentPage/persiapan/persiapan_list_page.dart';
import 'package:lalinapp/pages/contentlist_page.dart';
import 'package:lalinapp/theme.dart';

class PersiapanCardMenu extends StatelessWidget {
  final String imgUrl;
  final String title;

  PersiapanCardMenu({this.imgUrl, this.title});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => PersiapanListVid()));
      },
      child: Container(
        height: MediaQuery.of(context).size.width,
        width: MediaQuery.of(context).size.height,
        // color: whitePure,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: whitePure,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipRRect(
              // ignore: prefer_const_constructors
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(20),
                top: Radius.circular(20),
              ),
              child: Image.asset(
                imgUrl,
                width: MediaQuery.of(context).size.width,
                height: 130,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              title,
              style: txMedium.copyWith(
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
