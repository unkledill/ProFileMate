import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:profilemate/web_view_screen.dart';

class ProfileInfo extends StatefulWidget {
  const ProfileInfo({super.key});

  @override
  State<ProfileInfo> createState() => _ProfileInfoState();
}

class _ProfileInfoState extends State<ProfileInfo> {
  final String bio =
      "Coding enthusiast with a passion for Flutter, turning ideas into pixel-perfect mobile apps. Constantly learning and exploring the world of widgets and UI/UX design";
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: const Size(375, 812), minTextAdapt: true);
    return Scaffold(
      backgroundColor: const Color(0XFFeff1f3),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        toolbarHeight: 80.h,
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Image.asset(
          'images/logo.png',
          width: 150.w,
          height: 150.h,
        ),
      ),
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(height: 50.h),
              Center(
                child: Container(
                  padding: const EdgeInsets.all(30.0),
                  alignment: Alignment.center,
                  height: 200.h,
                  width: 350.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      shape: BoxShape.rectangle,
                      color: Colors.white),
                  child: Column(
                    children: [
                      const Text(
                        'Malik Buraimoh',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 28.0,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10.0),
                      Text(
                        bio,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            color: Colors.black54,
                            fontSize: 12.0,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const WebViewScreen()),
                  );
                },
                child: Center(
                  child: Container(
                    height: 60.0.h,
                    width: 350.0.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0XFF2E8069)),
                    child: const Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FaIcon(
                            FontAwesomeIcons.github,
                            color: Colors.white,
                          ),
                          SizedBox(width: 10.0),
                          Text(
                            'Github',
                            style:
                                TextStyle(color: Colors.white, fontSize: 20.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 215.h,
            left: 140.w,
            child: Container(
              height: 100.h,
              width: 100.w,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                border: Border.all(
                  color: Colors.white, // Color of the stroke
                  width: 3.0, // Width of the stroke
                ),
                image: const DecorationImage(
                    image: AssetImage('images/profile.png')),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 6,
                    offset: const Offset(4, 8),
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
