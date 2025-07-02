import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mm_project/images/svgs/assets_path/assets_path.dart';
import 'package:mm_project/sdk/widgets/button_widget.dart';

import '../../styles/colors/colors_custom.dart';
class LogAddedScreen extends StatefulWidget {
  const LogAddedScreen({super.key});

  @override
  State<LogAddedScreen> createState() => _LogAddedScreenState();
}

class _LogAddedScreenState extends State<LogAddedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(log_added),
            SizedBox(height: 32,),
            RoundButton(
                title: 'Okay',
                onTap: (){
                  Navigator.pop(context);
                },
                bgcolor: CustomColors.purpule600,
                btnheight: 48,
              btnwidth:120 ,
                ),

          ],
        ),
      ),
    );
  }
}
