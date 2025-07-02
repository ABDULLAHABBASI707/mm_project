// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:mm_project/images/svgs/assets_path/assets_path.dart';
// import 'package:mm_project/sdk/widgets/button_widget.dart';
// import 'package:mm_project/styles/colors/colors.dart';
//
// class KickReport extends StatefulWidget {
//   const KickReport({super.key});
//
//   @override
//   State<KickReport> createState() => _KickReportState();
// }
//
// class _KickReportState extends State<KickReport> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: CustomColors.neutral100,
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             // Top congratulation section
//             Container(
//               height: 268,
//               width: double.infinity,
//               decoration: const BoxDecoration(
//                 color: Colors.white,
//               ),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(top: 24, bottom: 24),
//                     child: Center(child: SvgPicture.asset(union, height: 80)),
//                   ),
//                   const Text(
//                     "Great job!",
//                     style: TextStyle(
//                       color: Color(0xFF090909),
//                       fontSize: 18,
//                       fontWeight: FontWeight.w600,
//                     ),
//                   ),
//                   const SizedBox(height: 8),
//                   const Padding(
//                     padding: EdgeInsets.symmetric(horizontal: 24),
//                     child: Text(
//                       "Your baby lorem ipsum dolor sit amet",
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                         color: Color(0xFF424242),
//                         fontSize: 14,
//                         fontWeight: FontWeight.w500,
//                         letterSpacing: 0.4,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//
//             // Kick Report Section
//             Container(
//               margin: const EdgeInsets.only(left: 16, right: 16, top: 32),
//               padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
//               height:372 ,
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(16),
//               ),
//               child: Column(
//                 children: [
//                   const Text(
//                     "10 kicks",
//                     style: TextStyle(
//                       fontWeight: FontWeight.w700,
//                       fontSize: 32,
//                       color: Color(0xFF090909),
//                     ),
//                   ),
//                   const SizedBox(height: 4),
//                   const Text(
//                     "Your baby kicking for 2 hours",
//                     style: TextStyle(
//                       fontWeight: FontWeight.w500,
//                       fontSize: 14,
//                       color: Color(0xFF424242),
//                       letterSpacing: 0.4,
//                     ),
//                   ),
//                   const SizedBox(height: 32),
//
//
//                   Padding(
//                     padding: const EdgeInsets.only(left: 57.5,right:56.5,top: 24,bottom: 40   ),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children:  [
//                         Container(
//                           padding: EdgeInsets.only(left: 12,right: 12,bottom: 4,top: 4),
//                           height:60,
//
//                           decoration: BoxDecoration(
//                             color: Color(0xFFF5F5F5),
//                             borderRadius: BorderRadius.circular(8)
//                           ),
//                           child: Column(
//
//                             children: [
//                               Text(
//                                 "03/12/2025",
//                                 style: TextStyle(
//                                   fontSize: 14,
//                                   fontWeight: FontWeight.w500,
//                                   color: Color(0xFF616161),
//                                 ),
//                               ),
//                               SizedBox(height: 4),
//                               Text(
//                                 "08:30 AM",
//                                 style: TextStyle(
//                                   fontSize: 16,
//                                   fontWeight: FontWeight.w500,
//                                   color: Color(0xFF616161),
//                                 ),
//                                 textAlign: TextAlign.center,
//                               ),
//                             ],
//                           ),
//                         ),
//
//                         Container(
//                           padding: EdgeInsets.only(left: 12,right: 12,bottom: 4,top: 4),
//                           height:60,
//                           decoration: BoxDecoration(
//                               color: Color(0xFFF5F5F5),
//                               borderRadius: BorderRadius.circular(8)
//                           ),
//                           child: Column(
//
//                             children: [
//                               Text(
//                                 "03/12/2025",
//                                 style: TextStyle(
//                                   fontSize: 14,
//                                   fontWeight: FontWeight.w500,
//                                   color: Color(0xFF616161),
//                                 ),
//                               ),
//                               SizedBox(height: 4),
//                               Text(
//                                 "9:30 AM",
//                                 style: TextStyle(
//                                   fontSize: 16,
//                                   fontWeight: FontWeight.w500,
//                                   color: Color(0xFF616161),
//                                 ),
//                                 textAlign: TextAlign.center,
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//
//               ),
//
//
//             ),
//             SizedBox(height: 55,),
//             RoundButton(
//                 btnwidth: 327,
//                 title: 'Got it',
//                 onTap: (){},
//                 bgcolor: Color(0xFF7F67A1),
//                 btnheight: 48),
//
//
//
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mm_project/images/svgs/assets_path/assets_path.dart';
import 'package:mm_project/sdk/widgets/button_widget.dart';
import 'package:mm_project/styles/colors/colors.dart';

class KickReport extends StatefulWidget {
  const KickReport({super.key});

  @override
  State<KickReport> createState() => _KickReportState();
}

class _KickReportState extends State<KickReport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.neutral100,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 268,
              width: double.infinity,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 26),
                    child: SvgPicture.asset(union, height: 80),
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    "Great job!",
                    style: TextStyle(
                      color: Color(0xFF090909),
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Text(
                      "Your baby lorem ipsum dolor sit amet",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF424242),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.4,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Kick Report Card
            Container(
              margin: const EdgeInsets.only(left: 16, right: 16, top: 32),
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [
                  const Text(
                    "10 kicks",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 32,
                      color: Color(0xFF090909),
                    ),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    "Your baby kicking for 2 hours",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Color(0xFF424242),
                      letterSpacing: 0.4,
                    ),
                  ),
                  const SizedBox(height: 32),

                  // Time Range
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _timeBox("03/12/2025", "8:30AM"),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Text(
                          "-",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      _timeBox("03/12/2025", "9:30AM"),
                    ],
                  ),

                  const SizedBox(height: 40),

                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Center(
                      child: Text(
                        "What does 10 kicks mean?",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF090909),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    "Angelina, your habits may be holding you back but you're not alone. Many people have below average scores. The good news is, simple changes to your diet and habits could boost your score by 20 points or more. Let's do this!",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      height: 1.4,
                      letterSpacing: 0.4,
                      color: Color(0xFF424242),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 55),

            RoundButton(
              btnwidth: 327,
              btnheight: 48,
              title: 'Got it',
              onTap: () {},
              bgcolor: const Color(0xFF7F67A1),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget _timeBox(String date, String time) {
    return Container(
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: BoxDecoration(
        color: const Color(0xFFF5F5F5),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            date,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Color(0xFF616161),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            time,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Color(0xFF616161),
            ),
          ),
        ],
      ),
    );
  }
}
