// // import 'package:flutter/cupertino.dart';
// // import 'package:flutter/material.dart';
// //
// // class KickCounter2 extends StatefulWidget {
// //   const KickCounter2({super.key});
// //
// //   @override
// //   State<KickCounter2> createState() => _KickCounter2State();
// // }
// //
// // class _KickCounter2State extends State<KickCounter2> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         elevation: 0,
// //         leading: IconButton(
// //           onPressed: () {
// //             Navigator.pop(context);
// //           },
// //           icon: const Icon(Icons.close, color: Color(0xFF616161)),
// //         ),
// //         title: const Text(
// //           "Kick Counter",
// //           style: TextStyle(
// //             fontWeight: FontWeight.w600,
// //             fontSize: 16,
// //             color: Colors.black,
// //           ),
// //         ),
// //         centerTitle: true,
// //         actions: [
// //           Padding(
// //             padding: const EdgeInsets.only(right: 19),
// //             child: Icon(Icons.watch_later_outlined, color: Color(0xFF616161)),
// //           ),
// //         ],
// //       ),
// //       body: Column(
// //
// //         children: [
// //           Expanded(child: SizedBox()),
// //           Container(
// //
// //             margin:  EdgeInsets.only(left: 40,right: 40,top: 24),
// //             padding: EdgeInsets.only(left: 20,right: 20,top: 12,bottom: 12),
// //             decoration: BoxDecoration(color: Color(0xFFF5F5F5),
// //             borderRadius: BorderRadius.circular(12)),
// //             child: Text(
// //               "Tap the icon below when your baby kicks. Count 10 kicks in less than 2 hours.",
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }
//
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:mm_project/images/svgs/assets_path/assets_path.dart'; // Make sure kick.svg is inside this
//
// import '../../styles/colors/colors_custom.dart';
//
// class KickCounter2 extends StatefulWidget {
//   const KickCounter2({super.key});
//
//   @override
//   State<KickCounter2> createState() => _KickCounter2State();
// }
//
// class _KickCounter2State extends State<KickCounter2> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0,
//         leading: IconButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           icon: const Icon(Icons.close, color: Color(0xFF616161)),
//         ),
//         title: const Text(
//           "Kick Counter",
//           style: TextStyle(
//             fontWeight: FontWeight.w600,
//             fontSize: 16,
//             color: Colors.black,
//           ),
//         ),
//         centerTitle: true,
//         actions: const [
//           Padding(
//             padding: EdgeInsets.only(right: 19),
//             child: Icon(Icons.watch_later_outlined, color: Color(0xFF616161)),
//           ),
//         ],
//       ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           Container(
//             margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 24),
//             padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
//             decoration: BoxDecoration(
//               color: const Color(0xFFF5F5F5),
//               borderRadius: BorderRadius.circular(12),
//             ),
//             child: const Text(
//               "Tap the icon below when your baby kicks. Count 10 kicks in less than 2 hours.",
//               style: TextStyle(
//                 fontWeight: FontWeight.w500,
//                 fontSize: 14,
//                 letterSpacing: 0.4,
//                 color: CustomColors.black900,
//               ),
//               textAlign: TextAlign.center,
//             ),
//           ),
//
//           Center(
//             child: Container(
//               margin: const EdgeInsets.only(top: 90, bottom: 40),
//               padding: const EdgeInsets.all(30),
//               decoration: BoxDecoration(
//                 color: Color(0xFFF2EFF6),
//                 shape: BoxShape.circle,
//                 border: Border.all(color: const Color(0xFF9D86BD), width: 3),
//               ),
//               child: Container(
//                 width: 160,
//                 height: 160,
//                 decoration: const BoxDecoration(
//                   color: Color(0xFFB29DCE),
//                   shape: BoxShape.circle,
//                 ),
//                 child: Center(child: SvgPicture.asset(union, height: 80)),
//               ),
//             ),
//           ),
//           Flexible(child: SizedBox()),
//
//           Padding(
//             padding: const EdgeInsets.only(left: 56, right: 56, top: 40),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Column(
//                   children: [
//                     Container(
//                       height: 40,
//                       width: 40,
//
//                       decoration: BoxDecoration(
//                         color: Color(0xFFE0F8F6),
//                         borderRadius: BorderRadius.circular(40),
//
//                       ),
//                       child: SvgPicture.asset(restart_btn, height: 10),
//                     ),
//                     Text(
//                       "Restart",
//                       style: TextStyle(
//                         fontWeight: FontWeight.w500,
//                         fontSize: 14,
//                         letterSpacing: 0.4,
//                       ),
//                     ),
//                   ],
//                 ),
//
//                 Column(
//                   children: [
//                     Text(
//                       "8",
//                       style: TextStyle(
//                         fontWeight: FontWeight.w700,
//                         fontSize: 32,
//                       ),
//                     ),
//                     Text(
//                       "Baby kicks",
//                       style: TextStyle(
//                         fontWeight: FontWeight.w500,
//                         fontSize: 14,
//                         letterSpacing: 0.4,
//                       ),
//                     ),
//                   ],
//                 ),
//
//                 Column(
//                   children: [
//                     Container(
//                       height: 40,
//                       width: 40,
//
//                       decoration: BoxDecoration(
//                         color: Color(0xFFFFE9E6),
//                         borderRadius: BorderRadius.circular(40),
//                         border: Border.all(color: Color(0xFFE62204), width: 3),
//                       ),
//                       child: SvgPicture.asset(stop_btn, height: 10),
//                     ),
//                     Text(
//                       "End",
//                       style: TextStyle(
//                         fontWeight: FontWeight.w500,
//                         fontSize: 14,
//                         letterSpacing: 0.4,
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//           Flexible(child: SizedBox()),
//           Container(
//             decoration: BoxDecoration(
//
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mm_project/images/svgs/assets_path/assets_path.dart';

class KickCounter2 extends StatefulWidget {
  const KickCounter2({super.key});

  @override
  State<KickCounter2> createState() => _KickCounter2State();
}

class _KickCounter2State extends State<KickCounter2> {
  int kickCount = 8;
  String timeRemaining = "01:20:30";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.close, color: Color(0xFF616161)),
        ),
        title: const Text(
          "Kick Counter",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 19),
            child: Icon(Icons.watch_later_outlined, color: Color(0xFF616161)),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 24),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            decoration: BoxDecoration(
              color: const Color(0xFFF5F5F5),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Text(
              "Tap the icon below when your baby kicks.\nCount 10 kicks in less than 2 hours.",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                letterSpacing: 0.2,
                color: Colors.black87,
                height: 1.4,
              ),
              textAlign: TextAlign.center,
            ),
          ),

          const Spacer(),

          Center(
            child: GestureDetector(
              onTap: () {},
              child: Container(
                width: 200,
                height: 200,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    SizedBox(
                      width: 240,
                      height: 240,
                      child: CircularProgressIndicator(
                        value: kickCount / 22.0,
                        strokeWidth: 8,
                        backgroundColor: const Color(0xFFE8E8E8),
                        valueColor: const AlwaysStoppedAnimation<Color>(
                          Color(0xFF9D86BD),
                        ),
                      ),
                    ),

                    Container(
                      width: 160,
                      height: 160,
                      decoration: const BoxDecoration(
                        color: Color(0xFFB29DCE),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          union,
                          height: 80,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          const Spacer(),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 56),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: const Color(0xFFE0F8F6),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          restart_btn,
                          height: 24,
                          color: const Color(0xFF00BFA5),
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      "Restart",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),

                Column(
                  children: [
                    Text(
                      "$kickCount",
                      style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 32,
                        color: Colors.black,
                      ),
                    ),
                    const Text(
                      "Baby kicks",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),

                Column(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFE9E6),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.stop_circle_outlined,
                          color: const Color(0xFFE62204),
                          size: 24,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      "End",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          Flexible(child: const SizedBox()),

          Container(
            margin: EdgeInsets.only(left: 82, right: 81, top: 32, bottom: 106),
            padding: EdgeInsets.symmetric(vertical: 16),
            decoration: BoxDecoration(
              color: Color(0xFFF8F8F8),
              borderRadius: BorderRadius.circular(62),
            ),
            child: Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    Icons.access_time,
                    color: Colors.black54,
                    size: 20,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    "Time remaining: $timeRemaining",
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
