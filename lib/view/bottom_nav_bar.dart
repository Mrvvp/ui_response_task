import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_response_task/controller/bottom_nav_bar_controller.dart';
import 'package:ui_response_task/view/home_page.dart';
import 'package:ui_response_task/view/profile_page.dart';
import 'package:ui_response_task/view/stamp_page.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final NavController navController = Get.put(NavController());

    return Scaffold(
      body: Obx(() => IndexedStack(
            index: navController.tabIndex.value,
            children: const [
              HomePage(),
              StampPage(),
              ProfilePage(),
            ],
          )),
      bottomNavigationBar: Obx(() => SizedBox(
            height: 100,
            child: BottomNavigationBar(
              elevation: 0,
              type: BottomNavigationBarType.fixed,
              currentIndex: navController.tabIndex.value,
              onTap: (index) => navController.tabIndex.value = index,
              items: [
                BottomNavigationBarItem(
                  icon: Image(
                    image: AssetImage(navController.tabIndex.value == 0
                        ? 'lib/images/search (2).png'
                        : 'lib/images/search.png'),
                    width: 30,
                    height: 57,
                  ),
                  label: 'さがす',
                ),
                BottomNavigationBarItem(
                    backgroundColor: Colors.transparent,
                    icon: Container(
                      height: 60,
                      decoration: BoxDecoration(
                          gradient: const LinearGradient(
                              colors: [Color(0xffFAAA14), Color(0xffFFD78D)]),
                          borderRadius: BorderRadius.circular(50)),
                      child: Image.asset(
                        'lib/images/scan-line.png',
                        color: Colors.white,
                      ),
                    ),
                    label: '打刻する'),
                BottomNavigationBarItem(
                    icon: Image(
                      image: AssetImage(navController.tabIndex.value == 2
                          ? 'lib/images/account (2).png'
                          : 'lib/images/account.png'),
                      width: 28,
                      height: 57,
                    ),
                    label: 'マイページ'),
              ],
              selectedLabelStyle: const TextStyle(
                  fontFamily: 'Noto Sans',
                  color: Colors.black,
                  fontSize: 13,
                  fontWeight: FontWeight.bold),
              selectedItemColor: const Color(0xffFAAA14),
            ),
          )),
    );
  }
}
