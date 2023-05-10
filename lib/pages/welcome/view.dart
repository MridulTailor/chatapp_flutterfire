import 'package:chatapp_flutterfire/pages/welcome/controller.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomePage extends GetView<WelcomeController> {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(
      () => SizedBox(
        width: 360.w,
        height: 780.w,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          PageView(
            scrollDirection: Axis.horizontal,
            reverse: false,
            onPageChanged: (index) {
              controller.changePage(index);
            },
            controller: PageController(
                initialPage: 0, keepPage: false, viewportFraction: 1),
            pageSnapping: true,
            physics: const ClampingScrollPhysics(),
            children: [
              Container(
                width: double.infinity,
                height: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/welcome_1.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/welcome_1.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/welcome_1.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  Positioned(
                    bottom: 90,
                    child: ElevatedButton(
                      onPressed: () {
                        controller.handleSignIn();
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                          foregroundColor:
                              MaterialStateProperty.all(Colors.black),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      side: const BorderSide(
                                          color: Colors.white)))),
                      child: const Text('Get Started'),
                    ),
                  )
                ]),
              )
            ],
          ),
          Positioned(
              bottom: 70,
              child: DotsIndicator(
                position: controller.state.index.value.toInt(),
                dotsCount: 3,
                reversed: false,
                mainAxisAlignment: MainAxisAlignment.center,
                decorator: DotsDecorator(
                  size: Size.square(9.0),
                  activeSize: Size(18.0, 9.0),
                  activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                ),
              ))
        ]),
      ),
    ));
  }
}
