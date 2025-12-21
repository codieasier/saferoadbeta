import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:saferoadbeta/presentions/screens/constants/app_colors.dart';
import 'package:saferoadbeta/presentions/screens/constants/app_text_styles.dart';
import 'package:saferoadbeta/presentions/screens/pages/quizOnBoarding.dart';
import 'package:saferoadbeta/presentions/screens/pages/settingspage.dart';
import 'package:saferoadbeta/presentions/screens/widgets/card.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final index=2;
  final navigationkey = GlobalKey<CurvedNavigationBarState>();
  final items = <Widget>[
    Image.asset('assets/icons/steeringwheel.png', height: 40, width: 40),
    const Icon(Icons.home, size: 40, color: Color(0xFFFBBF24)),
    const Icon(Icons.settings, size: 40, color: Color(0xFFFBBF24)),
  ];

  @override
  Widget build(BuildContext context) {
    String username = 'أحمد';
    return Scaffold(
      backgroundColor: Color(0xFF26396B),
      bottomNavigationBar: CurvedNavigationBar(
        items: items,
        color: const Color(0xFF26396B),
        backgroundColor: const Color(0xFF6A7B94),
        animationDuration: Duration(milliseconds: 200),
        height: 70,
        key: navigationkey,
      ),

      body: SafeArea(
        child: Container(
          decoration: AppColors.gradient,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 150,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color(0xFF1A2C57),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(50),
                    bottomLeft: Radius.circular(50),
                  ),
                ),
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/images/softlight.png',
                      width: double.infinity,
                      height: 120,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          child: Image.asset('assets/images/driverimage.png'),
                        ),
                        IconButton(
                          icon: Icon(Icons.settings, color: Colors.grey),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const settingsPage(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,

                      children: [
                        SizedBox(height: 100),
                        RichText(
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: 'مرحبًا بك ' + username,
                                style: AppTextStyles.heading1,
                              ),
                              TextSpan(text: '\n تحقق من ترتيبك هذا الأسبوع'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      HomeCard(
                        content: Column(
                          children: [
                            SvgPicture.asset(
                              'assets/icons/speedometer-speed-fast_svgrepo.com.svg',
                              height: 40,
                              width: 50,
                            ),
                            Text(
                              'قيادتك هذا الأسبوع كانت آمنة بنسبة',
                              style: AppTextStyles.heading2,
                            ),
                          ],
                        ),
                      ),
                      HomeCard(
                        content: Column(
                          children: [
                            SvgPicture.asset(
                              'assets/icons/speedometer-speed-fast_svgrepo.com.svg',
                              height: 40,
                              width: 50,
                            ),
                            Text(
                              'قيادتك هذا الأسبوع كانت آمنة بنسبة',
                              style: AppTextStyles.heading2,
                            ),
                          ],
                        ),
                      ),
                      HomeCard(
                        content: Column(
                          children: [
                            SvgPicture.asset(
                              'assets/icons/speedometer-speed-fast_svgrepo.com.svg',
                              height: 40,
                              width: 50,
                            ),
                            Text(
                              'قيادتك هذا الأسبوع كانت آمنة بنسبة',
                              style: AppTextStyles.heading2,
                            ),
                          ],
                        ),
                      ),
                      HomeCard(
                        content: Column(
                          children: [
                            SvgPicture.asset(
                              'assets/icons/speedometer-speed-fast_svgrepo.com.svg',
                              height: 40,
                              width: 50,
                            ),
                            Text(
                              'قيادتك هذا الأسبوع كانت آمنة بنسبة',
                              style: AppTextStyles.heading2,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
