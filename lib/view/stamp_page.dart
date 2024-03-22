import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_response_task/controller/stamp_controller.dart';
import 'package:ui_response_task/view/home_page.dart';

class StampPage extends StatefulWidget {
  const StampPage({super.key});

  @override
  State<StampPage> createState() => _StampPageState();
}

class _StampPageState extends State<StampPage> {
  final ImageSelectionController _imageSelectionController =
      Get.put(ImageSelectionController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 174, 182, 255),
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      Get.to(const HomePage());
                    },
                    icon: const CircleAvatar(
                      backgroundColor: Color(0xff949EFF),
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        size: 15,
                        color: Colors.white,
                      ),
                    )),
                const Spacer(),
                const Text(
                  'スタンプカード詳細',
                  style: TextStyle(
                    fontFamily: 'Noto Sans',
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                const Spacer(),
                IconButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => const AlertDialog(
                          title: Center(
                            child: Text(
                              'No data availale',
                              style: TextStyle(
                                fontFamily: 'Noto Sans',
                                color: Colors.black,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                    icon: Image.asset(
                      'lib/images/minus.png',
                      height: 30,
                    ))
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(30),
            child: Row(
              children: [
                Text(
                  'Mer キッチン',
                  style: TextStyle(
                      fontFamily: 'Noto Sans',
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text(
                  '現在の獲得数',
                  style: TextStyle(
                    fontFamily: 'Noto Sans',
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text(
                    '30',
                    style: TextStyle(
                        fontFamily: 'Noto Sans',
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  '個',
                  style: TextStyle(
                    fontFamily: 'Noto Sans',
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: Column(
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              width: 300,
                              height: 220,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      blurRadius: 1.5,
                                      spreadRadius: 0.5,
                                    )
                                  ]),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, right: 20, bottom: 20),
                                    child: Row(
                                      children: [
                                        GestureDetector(
                                          onTap: () => _imageSelectionController
                                              .toggleSelection(0),
                                          child: Stack(
                                            children: [
                                              Image.asset(
                                                'lib/images/Star 1.png',
                                              ),
                                              Obx(() {
                                                if (_imageSelectionController
                                                    .isSelected[0]) {
                                                  return const Positioned(
                                                    top: 10,
                                                    right: 10,
                                                    child: Icon(
                                                      Icons.check,
                                                      color: Colors.white,
                                                      size: 20,
                                                    ),
                                                  );
                                                } else {
                                                  return Container();
                                                }
                                              }),
                                            ],
                                          ),
                                        ),
                                        const Spacer(),
                                        GestureDetector(
                                          onTap: () => _imageSelectionController
                                              .toggleSelection(1),
                                          child: Stack(
                                            children: [
                                              Image.asset(
                                                'lib/images/Star 1.png',
                                              ),
                                              Obx(() {
                                                if (_imageSelectionController
                                                    .isSelected[1]) {
                                                  return const Positioned(
                                                    top: 10,
                                                    right: 10,
                                                    child: Icon(
                                                      Icons.check,
                                                      color: Colors.white,
                                                      size: 20,
                                                    ),
                                                  );
                                                } else {
                                                  return Container();
                                                }
                                              }),
                                            ],
                                          ),
                                        ),
                                        const Spacer(),
                                        GestureDetector(
                                          onTap: () => _imageSelectionController
                                              .toggleSelection(2),
                                          child: Stack(
                                            children: [
                                              Image.asset(
                                                'lib/images/Star 1.png',
                                              ),
                                              Obx(() {
                                                if (_imageSelectionController
                                                    .isSelected[2]) {
                                                  return const Positioned(
                                                    top: 10,
                                                    right: 10,
                                                    child: Icon(
                                                      Icons.check,
                                                      color: Colors.white,
                                                      size: 20,
                                                    ),
                                                  );
                                                } else {
                                                  return Container();
                                                }
                                              }),
                                            ],
                                          ),
                                        ),
                                        const Spacer(),
                                        GestureDetector(
                                          onTap: () => _imageSelectionController
                                              .toggleSelection(3),
                                          child: Stack(
                                            children: [
                                              Image.asset(
                                                'lib/images/Star 1.png',
                                              ),
                                              Obx(() {
                                                if (_imageSelectionController
                                                    .isSelected[3]) {
                                                  return const Positioned(
                                                    top: 10,
                                                    right: 10,
                                                    child: Icon(
                                                      Icons.check,
                                                      color: Colors.white,
                                                      size: 20,
                                                    ),
                                                  );
                                                } else {
                                                  return Container();
                                                }
                                              }),
                                            ],
                                          ),
                                        ),
                                        const Spacer(),
                                        GestureDetector(
                                          onTap: () => _imageSelectionController
                                              .toggleSelection(4),
                                          child: Stack(
                                            children: [
                                              Image.asset(
                                                'lib/images/Star 1.png',
                                              ),
                                              Obx(() {
                                                if (_imageSelectionController
                                                    .isSelected[4]) {
                                                  return const Positioned(
                                                    top: 10,
                                                    right: 10,
                                                    child: Icon(
                                                      Icons.check,
                                                      color: Colors.white,
                                                      size: 20,
                                                    ),
                                                  );
                                                } else {
                                                  return Container();
                                                }
                                              }),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, right: 20, bottom: 20),
                                    child: Row(
                                      children: [
                                        GestureDetector(
                                          onTap: () => _imageSelectionController
                                              .toggleSelection(5),
                                          child: Stack(
                                            children: [
                                              Image.asset(
                                                'lib/images/Star 1.png',
                                              ),
                                              Obx(() {
                                                if (_imageSelectionController
                                                    .isSelected[5]) {
                                                  return const Positioned(
                                                    top: 10,
                                                    right: 10,
                                                    child: Icon(
                                                      Icons.check,
                                                      color: Colors.white,
                                                      size: 20,
                                                    ),
                                                  );
                                                } else {
                                                  return Container();
                                                }
                                              }),
                                            ],
                                          ),
                                        ),
                                        const Spacer(),
                                        GestureDetector(
                                          onTap: () => _imageSelectionController
                                              .toggleSelection(6),
                                          child: Stack(
                                            children: [
                                              Image.asset(
                                                'lib/images/Star 1.png',
                                              ),
                                              Obx(() {
                                                if (_imageSelectionController
                                                    .isSelected[6]) {
                                                  return const Positioned(
                                                    top: 10,
                                                    right: 10,
                                                    child: Icon(
                                                      Icons.check,
                                                      color: Colors.white,
                                                      size: 20,
                                                    ),
                                                  );
                                                } else {
                                                  return Container();
                                                }
                                              }),
                                            ],
                                          ),
                                        ),
                                        const Spacer(),
                                        GestureDetector(
                                          onTap: () => _imageSelectionController
                                              .toggleSelection(7),
                                          child: Stack(
                                            children: [
                                              Image.asset(
                                                'lib/images/Star 1.png',
                                              ),
                                              Obx(() {
                                                if (_imageSelectionController
                                                    .isSelected[7]) {
                                                  return const Positioned(
                                                    top: 10,
                                                    right: 10,
                                                    child: Icon(
                                                      Icons.check,
                                                      color: Colors.white,
                                                      size: 20,
                                                    ),
                                                  );
                                                } else {
                                                  return Container();
                                                }
                                              }),
                                            ],
                                          ),
                                        ),
                                        const Spacer(),
                                        GestureDetector(
                                          onTap: () => _imageSelectionController
                                              .toggleSelection(8),
                                          child: Stack(
                                            children: [
                                              Image.asset(
                                                'lib/images/Star 1.png',
                                              ),
                                              Obx(() {
                                                if (_imageSelectionController
                                                    .isSelected[8]) {
                                                  return const Positioned(
                                                    top: 10,
                                                    right: 10,
                                                    child: Icon(
                                                      Icons.check,
                                                      color: Colors.white,
                                                      size: 20,
                                                    ),
                                                  );
                                                } else {
                                                  return Container();
                                                }
                                              }),
                                            ],
                                          ),
                                        ),
                                        const Spacer(),
                                        GestureDetector(
                                          onTap: () => _imageSelectionController
                                              .toggleSelection(9),
                                          child: Stack(
                                            children: [
                                              Image.asset(
                                                'lib/images/Star 1.png',
                                              ),
                                              Obx(() {
                                                if (_imageSelectionController
                                                    .isSelected[9]) {
                                                  return const Positioned(
                                                    top: 10,
                                                    right: 10,
                                                    child: Icon(
                                                      Icons.check,
                                                      color: Colors.white,
                                                      size: 20,
                                                    ),
                                                  );
                                                } else {
                                                  return Container();
                                                }
                                              }),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, right: 20, bottom: 20),
                                    child: Row(
                                      children: [
                                        GestureDetector(
                                          onTap: () => _imageSelectionController
                                              .toggleSelection(10),
                                          child: Stack(
                                            children: [
                                              Image.asset(
                                                'lib/images/Star 1.png',
                                              ),
                                              Obx(() {
                                                if (_imageSelectionController
                                                    .isSelected[10]) {
                                                  return const Positioned(
                                                    top: 10,
                                                    right: 10,
                                                    child: Icon(
                                                      Icons.check,
                                                      color: Colors.white,
                                                      size: 20,
                                                    ),
                                                  );
                                                } else {
                                                  return Container();
                                                }
                                              }),
                                            ],
                                          ),
                                        ),
                                        const Spacer(),
                                        GestureDetector(
                                          onTap: () => _imageSelectionController
                                              .toggleSelection(11),
                                          child: Stack(
                                            children: [
                                              Image.asset(
                                                'lib/images/Star 1.png',
                                              ),
                                              Obx(() {
                                                if (_imageSelectionController
                                                    .isSelected[11]) {
                                                  return const Positioned(
                                                    top: 10,
                                                    right: 10,
                                                    child: Icon(
                                                      Icons.check,
                                                      color: Colors.white,
                                                      size: 20,
                                                    ),
                                                  );
                                                } else {
                                                  return Container();
                                                }
                                              }),
                                            ],
                                          ),
                                        ),
                                        const Spacer(),
                                        GestureDetector(
                                          onTap: () => _imageSelectionController
                                              .toggleSelection(12),
                                          child: Stack(
                                            children: [
                                              Image.asset(
                                                'lib/images/Star 1.png',
                                              ),
                                              Obx(() {
                                                if (_imageSelectionController
                                                    .isSelected[12]) {
                                                  return const Positioned(
                                                    top: 10,
                                                    right: 10,
                                                    child: Icon(
                                                      Icons.check,
                                                      color: Colors.white,
                                                      size: 20,
                                                    ),
                                                  );
                                                } else {
                                                  return Container();
                                                }
                                              }),
                                            ],
                                          ),
                                        ),
                                        const Spacer(),
                                        GestureDetector(
                                          onTap: () => _imageSelectionController
                                              .toggleSelection(13),
                                          child: Stack(
                                            children: [
                                              Image.asset(
                                                'lib/images/Star 1.png',
                                              ),
                                              Obx(() {
                                                if (_imageSelectionController
                                                    .isSelected[13]) {
                                                  return const Positioned(
                                                    top: 10,
                                                    right: 10,
                                                    child: Icon(
                                                      Icons.check,
                                                      color: Colors.white,
                                                      size: 20,
                                                    ),
                                                  );
                                                } else {
                                                  return Container();
                                                }
                                              }),
                                            ],
                                          ),
                                        ),
                                        const Spacer(),
                                        GestureDetector(
                                          onTap: () => _imageSelectionController
                                              .toggleSelection(14),
                                          child: Stack(
                                            children: [
                                              Image.asset(
                                                'lib/images/Star 1.png',
                                              ),
                                              Obx(() {
                                                if (_imageSelectionController
                                                    .isSelected[14]) {
                                                  return const Positioned(
                                                    top: 10,
                                                    right: 10,
                                                    child: Icon(
                                                      Icons.check,
                                                      color: Colors.white,
                                                      size: 20,
                                                    ),
                                                  );
                                                } else {
                                                  return Container();
                                                }
                                              }),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 300,
                              height: 220,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      blurRadius: 1.5,
                                      spreadRadius: 0.5,
                                    )
                                  ]),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, right: 20, bottom: 20),
                                    child: Row(
                                      children: [
                                        GestureDetector(
                                          onTap: () => _imageSelectionController
                                              .toggleSelection(15),
                                          child: Stack(
                                            children: [
                                              Image.asset(
                                                'lib/images/Star 1.png',
                                              ),
                                              Obx(() {
                                                if (_imageSelectionController
                                                    .isSelected[15]) {
                                                  return const Positioned(
                                                    top: 10,
                                                    right: 10,
                                                    child: Icon(
                                                      Icons.check,
                                                      color: Colors.white,
                                                      size: 20,
                                                    ),
                                                  );
                                                } else {
                                                  return Container();
                                                }
                                              }),
                                            ],
                                          ),
                                        ),
                                        const Spacer(),
                                        GestureDetector(
                                          onTap: () => _imageSelectionController
                                              .toggleSelection(16),
                                          child: Stack(
                                            children: [
                                              Image.asset(
                                                'lib/images/Star 1.png',
                                              ),
                                              Obx(() {
                                                if (_imageSelectionController
                                                    .isSelected[16]) {
                                                  return const Positioned(
                                                    top: 10,
                                                    right: 10,
                                                    child: Icon(
                                                      Icons.check,
                                                      color: Colors.white,
                                                      size: 20,
                                                    ),
                                                  );
                                                } else {
                                                  return Container();
                                                }
                                              }),
                                            ],
                                          ),
                                        ),
                                        const Spacer(),
                                        GestureDetector(
                                          onTap: () => _imageSelectionController
                                              .toggleSelection(17),
                                          child: Stack(
                                            children: [
                                              Image.asset(
                                                'lib/images/Star 1.png',
                                              ),
                                              Obx(() {
                                                if (_imageSelectionController
                                                    .isSelected[17]) {
                                                  return const Positioned(
                                                    top: 10,
                                                    right: 10,
                                                    child: Icon(
                                                      Icons.check,
                                                      color: Colors.white,
                                                      size: 20,
                                                    ),
                                                  );
                                                } else {
                                                  return Container();
                                                }
                                              }),
                                            ],
                                          ),
                                        ),
                                        const Spacer(),
                                        GestureDetector(
                                          onTap: () => _imageSelectionController
                                              .toggleSelection(18),
                                          child: Stack(
                                            children: [
                                              Image.asset(
                                                'lib/images/Star 1.png',
                                              ),
                                              Obx(() {
                                                if (_imageSelectionController
                                                    .isSelected[18]) {
                                                  return const Positioned(
                                                    top: 10,
                                                    right: 10,
                                                    child: Icon(
                                                      Icons.check,
                                                      color: Colors.white,
                                                      size: 20,
                                                    ),
                                                  );
                                                } else {
                                                  return Container();
                                                }
                                              }),
                                            ],
                                          ),
                                        ),
                                        const Spacer(),
                                        GestureDetector(
                                          onTap: () => _imageSelectionController
                                              .toggleSelection(19),
                                          child: Stack(
                                            children: [
                                              Image.asset(
                                                'lib/images/Star 1.png',
                                              ),
                                              Obx(() {
                                                if (_imageSelectionController
                                                    .isSelected[19]) {
                                                  return const Positioned(
                                                    top: 10,
                                                    right: 10,
                                                    child: Icon(
                                                      Icons.check,
                                                      color: Colors.white,
                                                      size: 20,
                                                    ),
                                                  );
                                                } else {
                                                  return Container();
                                                }
                                              }),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, right: 20, bottom: 20),
                                    child: Row(
                                      children: [
                                        GestureDetector(
                                          onTap: () => _imageSelectionController
                                              .toggleSelection(20),
                                          child: Stack(
                                            children: [
                                              Image.asset(
                                                'lib/images/Star 1.png',
                                              ),
                                              Obx(() {
                                                if (_imageSelectionController
                                                    .isSelected[20]) {
                                                  return const Positioned(
                                                    top: 10,
                                                    right: 10,
                                                    child: Icon(
                                                      Icons.check,
                                                      color: Colors.white,
                                                      size: 20,
                                                    ),
                                                  );
                                                } else {
                                                  return Container();
                                                }
                                              }),
                                            ],
                                          ),
                                        ),
                                        const Spacer(),
                                        GestureDetector(
                                          onTap: () => _imageSelectionController
                                              .toggleSelection(21),
                                          child: Stack(
                                            children: [
                                              Image.asset(
                                                'lib/images/Star 1.png',
                                              ),
                                              Obx(() {
                                                if (_imageSelectionController
                                                    .isSelected[21]) {
                                                  return const Positioned(
                                                    top: 10,
                                                    right: 10,
                                                    child: Icon(
                                                      Icons.check,
                                                      color: Colors.white,
                                                      size: 20,
                                                    ),
                                                  );
                                                } else {
                                                  return Container();
                                                }
                                              }),
                                            ],
                                          ),
                                        ),
                                        const Spacer(),
                                        GestureDetector(
                                          onTap: () => _imageSelectionController
                                              .toggleSelection(22),
                                          child: Stack(
                                            children: [
                                              Image.asset(
                                                'lib/images/Star 1.png',
                                              ),
                                              Obx(() {
                                                if (_imageSelectionController
                                                    .isSelected[22]) {
                                                  return const Positioned(
                                                    top: 10,
                                                    right: 10,
                                                    child: Icon(
                                                      Icons.check,
                                                      color: Colors.white,
                                                      size: 20,
                                                    ),
                                                  );
                                                } else {
                                                  return Container();
                                                }
                                              }),
                                            ],
                                          ),
                                        ),
                                        const Spacer(),
                                        GestureDetector(
                                          onTap: () => _imageSelectionController
                                              .toggleSelection(23),
                                          child: Stack(
                                            children: [
                                              Image.asset(
                                                'lib/images/Star 1.png',
                                              ),
                                              Obx(() {
                                                if (_imageSelectionController
                                                    .isSelected[23]) {
                                                  return const Positioned(
                                                    top: 10,
                                                    right: 10,
                                                    child: Icon(
                                                      Icons.check,
                                                      color: Colors.white,
                                                      size: 20,
                                                    ),
                                                  );
                                                } else {
                                                  return Container();
                                                }
                                              }),
                                            ],
                                          ),
                                        ),
                                        const Spacer(),
                                        GestureDetector(
                                          onTap: () => _imageSelectionController
                                              .toggleSelection(24),
                                          child: Stack(
                                            children: [
                                              Image.asset(
                                                'lib/images/Star 1.png',
                                              ),
                                              Obx(() {
                                                if (_imageSelectionController
                                                    .isSelected[24]) {
                                                  return const Positioned(
                                                    top: 10,
                                                    right: 10,
                                                    child: Icon(
                                                      Icons.check,
                                                      color: Colors.white,
                                                      size: 20,
                                                    ),
                                                  );
                                                } else {
                                                  return Container();
                                                }
                                              }),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, right: 20, bottom: 20),
                                    child: Row(
                                      children: [
                                        GestureDetector(
                                          onTap: () => _imageSelectionController
                                              .toggleSelection(25),
                                          child: Stack(
                                            children: [
                                              Image.asset(
                                                'lib/images/Star 1.png',
                                              ),
                                              Obx(() {
                                                if (_imageSelectionController
                                                    .isSelected[25]) {
                                                  return const Positioned(
                                                    top: 10,
                                                    right: 10,
                                                    child: Icon(
                                                      Icons.check,
                                                      color: Colors.white,
                                                      size: 20,
                                                    ),
                                                  );
                                                } else {
                                                  return Container();
                                                }
                                              }),
                                            ],
                                          ),
                                        ),
                                        const Spacer(),
                                        GestureDetector(
                                          onTap: () => _imageSelectionController
                                              .toggleSelection(26),
                                          child: Stack(
                                            children: [
                                              Image.asset(
                                                'lib/images/Star 1.png',
                                              ),
                                              Obx(() {
                                                if (_imageSelectionController
                                                    .isSelected[26]) {
                                                  return const Positioned(
                                                    top: 10,
                                                    right: 10,
                                                    child: Icon(
                                                      Icons.check,
                                                      color: Colors.white,
                                                      size: 20,
                                                    ),
                                                  );
                                                } else {
                                                  return Container();
                                                }
                                              }),
                                            ],
                                          ),
                                        ),
                                        const Spacer(),
                                        GestureDetector(
                                          onTap: () => _imageSelectionController
                                              .toggleSelection(27),
                                          child: Stack(
                                            children: [
                                              Image.asset(
                                                'lib/images/Star 1.png',
                                              ),
                                              Obx(() {
                                                if (_imageSelectionController
                                                    .isSelected[27]) {
                                                  return const Positioned(
                                                    top: 10,
                                                    right: 10,
                                                    child: Icon(
                                                      Icons.check,
                                                      color: Colors.white,
                                                      size: 20,
                                                    ),
                                                  );
                                                } else {
                                                  return Container();
                                                }
                                              }),
                                            ],
                                          ),
                                        ),
                                        const Spacer(),
                                        GestureDetector(
                                          onTap: () => _imageSelectionController
                                              .toggleSelection(28),
                                          child: Stack(
                                            children: [
                                              Image.asset(
                                                'lib/images/Star 1.png',
                                              ),
                                              Obx(() {
                                                if (_imageSelectionController
                                                    .isSelected[28]) {
                                                  return const Positioned(
                                                    top: 10,
                                                    right: 10,
                                                    child: Icon(
                                                      Icons.check,
                                                      color: Colors.white,
                                                      size: 20,
                                                    ),
                                                  );
                                                } else {
                                                  return Container();
                                                }
                                              }),
                                            ],
                                          ),
                                        ),
                                        const Spacer(),
                                        GestureDetector(
                                          onTap: () => _imageSelectionController
                                              .toggleSelection(29),
                                          child: Stack(
                                            children: [
                                              Image.asset(
                                                'lib/images/Star 1.png',
                                              ),
                                              Obx(() {
                                                if (_imageSelectionController
                                                    .isSelected[29]) {
                                                  return const Positioned(
                                                    top: 10,
                                                    right: 10,
                                                    child: Icon(
                                                      Icons.check,
                                                      color: Colors.white,
                                                      size: 20,
                                                    ),
                                                  );
                                                } else {
                                                  return Container();
                                                }
                                              }),
                                            ],
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
                    ),
                    const Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          '2 / 2枚目',
                          style: TextStyle(
                            fontFamily: 'Noto Sans',
                            color: Colors.black,
                          ),
                        )),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'スタンプ獲得履歴',
                        style: TextStyle(
                            fontFamily: 'Noto Sans',
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 17),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.white,
                        child: ListView.separated(
                            itemBuilder: ((context, index) => SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  height: 70,
                                  child: const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '2021 / 11 / 18',
                                          style: TextStyle(
                                            fontFamily: 'Noto Sans',
                                            color: Colors.black,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              'スタンプを獲得しました。',
                                              style: TextStyle(
                                                fontFamily: 'Noto Sans',
                                                color: Colors.black,
                                              ),
                                            ),
                                            Spacer(),
                                            Text(
                                              '1 個',
                                              style: TextStyle(
                                                  fontFamily: 'Noto Sans',
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                )),
                            separatorBuilder: (context, index) =>
                                const Divider(),
                            itemCount: 10),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
