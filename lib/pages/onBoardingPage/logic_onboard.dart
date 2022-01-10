// ignore_for_file: unused_field, use_key_in_widget_constructors, prefer_final_fields, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:lalinapp/pages/homepage.dart';
import 'package:lalinapp/pages/onBoardingPage/onboarding.dart';
import 'package:lalinapp/theme.dart';

class LogicOnBoard extends StatefulWidget {
  @override
  State<LogicOnBoard> createState() => _LogicOnBoardState();
}

class _LogicOnBoardState extends State<LogicOnBoard> {
  int _currentPage = 0;
  PageController _controller = PageController();

  // ignore: prefer_final_fields
  List<Widget> _pages = [
    OnBoardingPage(
      title: 'Penjelasan Mengenai Rambu - Rambu',
      description:
          'Cari tau macam -  macam rambu yang ada di jalan melalui CerTas, dengan penjelasan audio lebih mudah untuk memahami',
      imgUrl: 'assets/illustration.png',
    ),
    OnBoardingPage(
      title: 'Minimalisir Pelanggaran',
      description:
          'Dengan mempejari mengenai peraturan, rambu, marka jalan serta berbagai informasi menarik lain dalam CerTas ini agar aman berkendara terhindar dari Tilang',
      imgUrl: 'assets/illustration2.png',
    ),
    OnBoardingPage(
      title: 'Terdapat Banyak Informasi',
      description:
          'Di dalam aplikasi ini kamu bisa memlihat infrormasi mengenai lalu lintas yang bisa kamu pilih sesuka hati',
      imgUrl: 'assets/illustration3.png',
    ),
  ];

  _onChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            scrollDirection: Axis.horizontal,
            onPageChanged: _onChanged,
            controller: _controller,
            itemCount: _pages.length,
            itemBuilder: (context, int index) {
              return _pages[index];
            },
          ),
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.85,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // SizedBox(
                //   height: MediaQuery.of(context).size.height,
                // ),
                Row(
                  children: List<Widget>.generate(
                    _pages.length,
                    (int index) => AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      height: 13,
                      width: (index == _currentPage) ? 30 : 13,
                      margin: EdgeInsets.symmetric(
                        horizontal: 5,
                        vertical: 0,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color:
                              (index == _currentPage) ? greenColor : grayColor),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    _currentPage == (_pages.length - 1)
                        ? Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (_) => HomePage(),
                            ),
                          )
                        : _controller.nextPage(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeInOutQuint);
                  },
                  child: AnimatedContainer(
                    alignment: Alignment.center,
                    duration: Duration(microseconds: 300),
                    height: 50,
                    width: 140,
                    decoration: BoxDecoration(
                      color: greenColor,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: (_currentPage == (_pages.length - 1))
                        ? Text(
                            'Mulai',
                            style: txMedium.copyWith(
                              fontSize: 16,
                              color: blackColor,
                            ),
                          )
                        : Text(
                            'Selanjutnya',
                            style: txMedium.copyWith(
                              fontSize: 16,
                              color: blackColor,
                            ),
                          ),
                  ),
                ),
                // SizedBox(
                //   height: 100,
                // )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
