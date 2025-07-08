import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../images/svgs/assets_path/assets_path.dart';
import '../../sdk/widgets/button_widget.dart';
import '../../sdk/widgets/onboarding_btn.dart';
import '../../sdk/widgets/onboarding_widget.dart';
import '../login_screen/login_screen.dart';
import 'model/onboarding_model.dart';

class OnBoardingPageViewScreen extends StatefulWidget {
  const OnBoardingPageViewScreen({super.key});

  @override
  State<OnBoardingPageViewScreen> createState() =>
      _OnBoardingPageViewScreenState();
}

class _OnBoardingPageViewScreenState extends State<OnBoardingPageViewScreen> {
  final PageController _pageController = PageController(keepPage: true);
  int _currentPage = 0;

  List<OnboardingDetailModel> list = [
    OnboardingDetailModel(
      imageUrl: svg2,
      headingText: "Recommdenation from experts",
      descriptionText:
          "Lorem ipsum dolor sit amet orem ipsum dolor sit amet lorem ipsum",
    ),
    OnboardingDetailModel(
      imageUrl: svg1,
      headingText: "Your permium lesson is ready",
      descriptionText:
          "Lorem ipsum dolor sit amet orem ipsum dolor sit amet lorem ipsum",
    ),
    OnboardingDetailModel(
      imageUrl: svg3,
      headingText: "Start your health check now",
      descriptionText:
          "Lorem ipsum dolor sit amet orem ipsum dolor sit amet lorem ipsum",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              clipBehavior: Clip.none,
              padEnds: false,
              allowImplicitScrolling: true,
              pageSnapping: true,
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              itemBuilder: (context, index) {
                return Center(
                  child: OnBoardingPageViewWidget(
                    imageUrl: list[index].imageUrl,
                    headingText: list[index].headingText,
                    descriptionText: list[index].descriptionText,
                  ),
                );
              },
              itemCount: list.length,
            ),
          ),

          Padding(
            padding: const EdgeInsets.only( bottom: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(3, (index) {
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentPage == index
                        ? Theme.of(context).primaryColor
                        : Colors.grey.withOpacity(0.4),
                  ),
                );
              }),
            ),
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: RoundButton(
              btnwidth: double.infinity,
              title: "Get Started",
              onTap: () {},
              bgcolor: Color(0xFF7F67A1),
              btnheight: 48,
            ),
          ),
          SizedBox(height: 24),
          TextButton(
            style: TextButton.styleFrom(
              splashFactory: NoSplash.splashFactory,
              overlayColor: Colors.transparent,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
              );
            },
            child: Text(
              'Login',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16,
                letterSpacing: 0.5,
                height: 24 / 16,
                color: Color(0xFF7F67A1),
              ),
            ),
          ),
          SizedBox(height: 24),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
