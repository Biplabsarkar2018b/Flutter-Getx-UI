import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:test11/pages/welcome/controller.dart';

class WelcomePage extends GetView<WelcomeController> {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => SizedBox(
            width: 360.w,
            height: 780.h,
            child: Stack(alignment: Alignment.bottomCenter, children: [
              PageView(
                scrollDirection: Axis.horizontal,
                reverse: false,
                onPageChanged: (index) {
                  controller.changePage(index);
                },
                controller: PageController(
                  initialPage: 0,
                  keepPage: false,
                  viewportFraction: 1,
                ),
                pageSnapping: true,
                physics: const ClampingScrollPhysics(),
                children: [
                  Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        // fit: BoxFit.fill,
                        image: AssetImage('assets/images/hello.png'),
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        // fit: BoxFit.fill,
                        image: AssetImage('assets/images/ironman.png'),
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/lolo.png'),
                      ),
                    ),
                    child: Stack(alignment: Alignment.bottomCenter, children: [
                      Positioned(
                          bottom: 100.h,
                          child: InkWell(
                            onTap: () {
                              controller.handleSignIN();
                            },
                            child: const CircleAvatar(
                              radius: 40,
                              child: Icon(
                                Icons.arrow_circle_right_rounded,
                                size: 80,
                                // color: Colors.blue,
                              ),
                            ),
                          ))
                    ]),
                  ),
                ],
              ),
              Positioned(
                  bottom: 20,
                  child: DotsIndicator(
                    position: controller.state.index.value.toInt(),
                    dotsCount: 3,
                    decorator: DotsDecorator(
                      activeSize: const Size(18.0, 9.0),
                      activeShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      size: const Size.square(9),
                    ),
                    mainAxisAlignment: MainAxisAlignment.center,
                  ))
            ]),
          )),
    );
  }
}
