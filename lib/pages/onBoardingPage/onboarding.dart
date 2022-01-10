// ignore_for_file: missing_required_param, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lalinapp/pages/homepage.dart';
import 'package:lalinapp/theme.dart';
import 'package:introduction_screen/introduction_screen.dart';

// class OnBoardingPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) => IntroductionScreen(
//         pages: [
//           PageViewModel(
//             title: 'Penjelasan Mengenai \nRambu - Rambu',
//             body:
//                 'Cari tau macam -  macam rambu yang ada di jalan melalui CerTas, dengan penjelasan audio lebih mudah untuk memahami',
//             image: Image.asset(
//               'assets/illustration.png',
//               width: MediaQuery.of(context).size.width,
//             ),
//             decoration: getPageDecoration(),
//           ),
//         ],
//         done: Text('Selanjutnya'),
//         onDone: () => goHome(context),
//         skip: Text('Skip'),
//         onSkip: () => goHome(context),
//         next: btnNext('Selanjutnya'),
//         dotsDecorator: getDotDecoration(),
//         // onChange: (index) => print('Page $index selected'),
//         // globalBackgroundColor: whiteColorBg,
//       );

//   void goHome(context) => Navigator.of(context).pushReplacement(
//         MaterialPageRoute(
//           builder: (_) => HomePage(),
//         ),
//       );

//   DotsDecorator getDotDecoration() => DotsDecorator(
//         color: greenColor,
//         size: Size(13, 13),
//       );

//   PageDecoration getPageDecoration() => PageDecoration(
//       titleTextStyle: txBold.copyWith(fontSize: 24),
//       bodyTextStyle: txLight.copyWith(fontSize: 14),
//       // descriptionPadding: EdgeInsets.symmetric(horizontal: 20),
//       pageColor: onBoardBg);

//   Widget btnNext(String capt) {
//     return Container(
//       child: Text(
//         capt,
//         style: txMedium.copyWith(
//           fontSize: 16,
//         ),
//       ),
//       decoration: BoxDecoration(
//         color: greenColor,
//         borderRadius: BorderRadius.circular(50),
//       ),
//     );
//   }
// }

class OnBoardingPage extends StatelessWidget {
  final String imgUrl;
  final String title;
  final String description;

  OnBoardingPage({this.imgUrl, this.title, this.description});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      color: whiteColorBg,
      child: Column(
        children: [
          SizedBox(
            height: 80,
          ),
          Image.asset(
            imgUrl,
            width: width,
          ),
          SizedBox(
            height: 35,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: txBold.copyWith(
                    fontSize: 24,
                    color: blackColor,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  description,
                  style: txLight,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
