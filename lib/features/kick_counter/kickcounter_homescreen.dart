import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mm_project/images/svgs/assets_path/assets_path.dart';
import 'package:mm_project/styles/colors/colors.dart';

import 'kick_counter.dart';

class KickcounterHomescreen extends StatelessWidget {
  const KickcounterHomescreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: Color(0xFFFFFFFF),
        appBar: AppBar(
           backgroundColor: Color(0xFFFFFFFF),

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
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 19),
              child: Icon(Icons.watch_later_outlined,color: Color(0xFF616161),)
            ),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Expanded(child: SizedBox()),
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: const Color(0xFF00B5A6),
                  width: 1,
                  style: BorderStyle.solid,
                ),
              ),
              child: Container(
                margin: const EdgeInsets.all(30),
                padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 28),
                decoration: const BoxDecoration(
                  color: Color(0xFF00B5A6),
                  shape: BoxShape.circle,
                ),
                child: Text(
                  "Start",
                  style: theme.textTheme.headlineMedium?.copyWith(
                    color: Colors.white,
                  ),
                ),
              ),
            ),

            const Expanded(child: SizedBox()),


            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(
                left: 16,
                top: 16,
                bottom: 16,
                right: 20,
              ),
              margin: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
              decoration: BoxDecoration(
                color: CustomColors.neutral100,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFF5F5F5),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    padding: const EdgeInsets.all(6),
                    child: SvgPicture.asset(kick_icon),
                  ),
                  const SizedBox(width: 16),


                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Add Manually",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: CustomColors.neutral900,
                          ),
                        ),
                        const SizedBox(height: 6),
                        const Text(
                          "Forgot to start? now you can input manually lorem ipsum.",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF616161),
                          ),
                        ),
                        const SizedBox(height: 16),

                        OutlinedButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>KickCounterScreen()));
                          },
                          style: OutlinedButton.styleFrom(
                            side:  BorderSide(color: CustomColors.purpule600),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40),
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 24,
                              vertical: 12,
                            ),
                          ),
                          child: const Text(
                            'Add Manual',
                            style: TextStyle(
                              color: CustomColors.purpule600,
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
