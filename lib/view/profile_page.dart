import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_response_task/controller/image_picker_controller.dart';
import 'package:ui_response_task/controller/tick_controller.dart';
import 'package:ui_response_task/controller/profile_controller.dart';
import 'package:ui_response_task/view/home_page.dart';
import 'package:ui_response_task/view/stamp_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final ImagePickerController controller = Get.put(ImagePickerController());
  final TickController tickController = Get.put(TickController());

  final ProfileController profileController = Get.put(ProfileController());
  final List<String> times = [
    "10:00 ",
    "11:00 ",
    "12:00 ",
    "13:00 ",
    "14:00 ",
    "15:00 ",
    "16:00 ",
    "17:00 ",
  ];
  final List<String> budget = ["¥ 1,000", "¥ 2,000"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Get.to(const StampPage());
                        },
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.grey.shade400,
                        )),
                    const Spacer(),
                    const Text(
                      '店舗プロフィール編集',
                      style: TextStyle(
                        fontFamily: 'Noto Sans',
                        color: Colors.black,
                        fontSize: 18,
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
                                  'Notifications',
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
                          'lib/images/bell.png',
                          height: 30,
                        )),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  '店舗名*',
                  style: TextStyle(
                    fontFamily: 'Noto Sans',
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey.shade100,
                      hintText: 'Mer キッチン',
                      hintStyle: TextStyle(
                        fontFamily: 'Noto Sans',
                        color: Colors.grey.shade500,
                        fontSize: 18,
                      ),
                      border: InputBorder.none),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  '代表担当者名*',
                  style: TextStyle(
                    fontFamily: 'Noto Sans',
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey.shade100,
                      hintText: '林田　絵梨花',
                      hintStyle: TextStyle(
                        fontFamily: 'Noto Sans',
                        color: Colors.grey.shade500,
                        fontSize: 18,
                      ),
                      border: InputBorder.none),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  '店舗電話番号*',
                  style: TextStyle(
                    fontFamily: 'Noto Sans',
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey.shade100,
                      hintText: '123 - 4567 8910',
                      hintStyle: TextStyle(
                        fontFamily: 'Noto Sans',
                        color: Colors.grey.shade500,
                        fontSize: 18,
                      ),
                      border: InputBorder.none),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  '店舗住所*',
                  style: TextStyle(
                    fontFamily: 'Noto Sans',
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey.shade100,
                      hintText: '大分県豊後高田市払田791-13',
                      hintStyle: TextStyle(
                        fontFamily: 'Noto Sans',
                        color: Colors.grey.shade500,
                        fontSize: 18,
                      ),
                      border: InputBorder.none),
                ),
                const SizedBox(
                  height: 20,
                ),
                Image.asset('lib/images/snazzy-image (1) 1.png'),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  children: [
                    Text(
                      '店舗外観*',
                      style: TextStyle(
                        fontFamily: 'Noto Sans',
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      '（最大3枚まで）',
                      style: TextStyle(
                        fontFamily: 'Noto Sans',
                        color: Colors.grey,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Image.asset('lib/images/スクリーンショット 2021-11-22 15.17 1.png'),
                    Image.asset('lib/images/スクリーンショット 2021-11-22 15.17 1.png'),
                    GestureDetector(
                      onTap: () => controller.showImagePickerOptions(),
                      child: SizedBox(
                        width: 90,
                        height: 85,
                        child: GetBuilder<ImagePickerController>(
                          builder: (_) => Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              controller.imageFile == null
                                  ? Image.asset('lib/images/Group.png')
                                  : Image.file(controller.imageFile!),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                '写真を追加',
                                style: TextStyle(
                                  fontFamily: 'Noto Sans',
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const Row(
                  children: [
                    Text(
                      '店舗内観*',
                      style: TextStyle(
                        fontFamily: 'Noto Sans',
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      '（1枚〜3枚ずつ追加してください）',
                      style: TextStyle(
                        fontFamily: 'Noto Sans',
                        color: Colors.grey,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Image.asset('lib/images/Input2 (2).png'),
                    const SizedBox(
                      width: 15,
                    ),
                    Image.asset('lib/images/Input2 (2).png'),
                    const SizedBox(
                      width: 15,
                    ),
                    Image.asset('lib/images/Input2 (2).png'),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  children: [
                    Text(
                      '店舗内観*',
                      style: TextStyle(
                        fontFamily: 'Noto Sans',
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      '（1枚〜3枚ずつ追加してください）',
                      style: TextStyle(
                        fontFamily: 'Noto Sans',
                        color: Colors.grey,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Image.asset('lib/images/Input1 (2).png'),
                      const SizedBox(
                        width: 15,
                      ),
                      Image.asset('lib/images/Input.png'),
                      Image.asset('lib/images/Group 241.png'),
                    ],
                  ),
                ),
                const Row(
                  children: [
                    Text(
                      'メニュー写真*',
                      style: TextStyle(
                        fontFamily: 'Noto Sans',
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      '（1枚〜3枚ずつ追加してください）',
                      style: TextStyle(
                        fontFamily: 'Noto Sans',
                        color: Colors.grey,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                          'lib/images/スクリーンショット 2021-11-21 21.38 3.png'),
                      Image.asset(
                          'lib/images/スクリーンショット 2021-11-22 14.52 3.png'),
                      Image.asset(
                          'lib/images/スクリーンショット 2021-11-22 14.54 3.png'),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  '営業時間*',
                  style: TextStyle(
                    fontFamily: 'Noto Sans',
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    GetBuilder<ProfileController>(
                      init: ProfileController(),
                      builder: (controller) => Container(
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                        ),
                        child: Center(
                          child: DropdownButton<String>(
                            icon:
                                const Icon(Icons.keyboard_arrow_down_outlined),
                            underline: Container(),
                            value: controller.selectedTime,
                            onChanged: (value) {
                              controller.selectTime(value!);
                            },
                            items: times
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: const TextStyle(
                                    fontFamily: 'Noto Sans',
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      '~',
                      style: TextStyle(
                        fontFamily: 'Noto Sans',
                        color: Colors.black,
                        fontSize: 30,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    GetBuilder<ProfileController>(
                      init: ProfileController(),
                      builder: (controller) => Container(
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                        ),
                        child: Center(
                          child: DropdownButton<String>(
                            icon:
                                const Icon(Icons.keyboard_arrow_down_outlined),
                            underline: Container(),
                            value: controller.selectedTime,
                            onChanged: (value) {
                              controller.selectTime(value!);
                            },
                            items: times
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: const TextStyle(
                                    fontFamily: 'Noto Sans',
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'ランチ時間*',
                  style: TextStyle(
                    fontFamily: 'Noto Sans',
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    GetBuilder<ProfileController>(
                      init: ProfileController(),
                      builder: (controller) => Container(
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                        ),
                        child: Center(
                          child: DropdownButton<String>(
                            icon:
                                const Icon(Icons.keyboard_arrow_down_outlined),
                            underline: Container(),
                            value: controller.selectedTime,
                            onChanged: (value) {
                              controller.selectTime(value!);
                            },
                            items: times
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: const TextStyle(
                                    fontFamily: 'Noto Sans',
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      '~',
                      style: TextStyle(
                        fontFamily: 'Noto Sans',
                        color: Colors.black,
                        fontSize: 30,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    GetBuilder<ProfileController>(
                      init: ProfileController(),
                      builder: (controller) => Container(
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                        ),
                        child: Center(
                          child: DropdownButton<String>(
                            icon:
                                const Icon(Icons.keyboard_arrow_down_outlined),
                            underline: Container(),
                            value: controller.selectedTime,
                            onChanged: (value) {
                              controller.selectTime(value!);
                            },
                            items: times
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: const TextStyle(
                                    fontFamily: 'Noto Sans',
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  '定休日*',
                  style: TextStyle(
                    fontFamily: 'Noto Sans',
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Row(
                    children: [
                      const Text(
                        '月',
                        style: TextStyle(
                          fontFamily: 'Noto Sans',
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          tickController.toggleTick(0);
                        },
                        child: Obx(() {
                          return Container(
                            width: 18,
                            height: 18,
                            decoration: BoxDecoration(
                              color: tickController.tickStates[0].value
                                  ? const Color(0xffEE7D42)
                                  : Colors.grey.shade100,
                            ),
                            child: tickController.tickStates[0].value
                                ? const Center(
                                    child: Icon(
                                    Icons.check,
                                    color: Colors.white,
                                    size: 15,
                                  ))
                                : null,
                          );
                        }),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        '火',
                        style: TextStyle(
                          fontFamily: 'Noto Sans',
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          tickController.toggleTick(1);
                        },
                        child: Obx(() {
                          return Container(
                            width: 18,
                            height: 18,
                            decoration: BoxDecoration(
                              color: tickController.tickStates[1].value
                                  ? const Color(0xffEE7D42)
                                  : Colors.grey.shade100,
                            ),
                            child: tickController.tickStates[1].value
                                ? const Center(
                                    child: Icon(
                                    Icons.check,
                                    color: Colors.white,
                                    size: 15,
                                  ))
                                : null,
                          );
                        }),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        '水',
                        style: TextStyle(
                          fontFamily: 'Noto Sans',
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          tickController.toggleTick(2);
                        },
                        child: Obx(() {
                          return Container(
                            width: 18,
                            height: 18,
                            decoration: BoxDecoration(
                              color: tickController.tickStates[2].value
                                  ? const Color(0xffEE7D42)
                                  : Colors.grey.shade100,
                            ),
                            child: tickController.tickStates[2].value
                                ? const Center(
                                    child: Icon(
                                    Icons.check,
                                    color: Colors.white,
                                    size: 15,
                                  ))
                                : null,
                          );
                        }),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        '木',
                        style: TextStyle(
                          fontFamily: 'Noto Sans',
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          tickController.toggleTick(3);
                        },
                        child: Obx(() {
                          return Container(
                            width: 18,
                            height: 18,
                            decoration: BoxDecoration(
                              color: tickController.tickStates[3].value
                                  ? const Color(0xffEE7D42)
                                  : Colors.grey.shade100,
                            ),
                            child: tickController.tickStates[3].value
                                ? const Center(
                                    child: Icon(
                                    Icons.check,
                                    color: Colors.white,
                                    size: 15,
                                  ))
                                : null,
                          );
                        }),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Row(
                    children: [
                      const Text(
                        '金',
                        style: TextStyle(
                          fontFamily: 'Noto Sans',
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          tickController.toggleTick(4);
                        },
                        child: Obx(() {
                          return Container(
                            width: 18,
                            height: 18,
                            decoration: BoxDecoration(
                              color: tickController.tickStates[4].value
                                  ? const Color(0xffEE7D42)
                                  : Colors.grey.shade100,
                            ),
                            child: tickController.tickStates[4].value
                                ? const Center(
                                    child: Icon(
                                    Icons.check,
                                    color: Colors.white,
                                    size: 15,
                                  ))
                                : null,
                          );
                        }),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        '土',
                        style: TextStyle(
                          fontFamily: 'Noto Sans',
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          tickController.toggleTick(5);
                        },
                        child: Obx(() {
                          return Container(
                            width: 18,
                            height: 18,
                            decoration: BoxDecoration(
                              color: tickController.tickStates[5].value
                                  ? const Color(0xffEE7D42)
                                  : Colors.grey.shade100,
                            ),
                            child: tickController.tickStates[5].value
                                ? const Center(
                                    child: Icon(
                                    Icons.check,
                                    color: Colors.white,
                                    size: 15,
                                  ))
                                : null,
                          );
                        }),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        '日',
                        style: TextStyle(
                          fontFamily: 'Noto Sans',
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          tickController.toggleTick(6);
                        },
                        child: Obx(() {
                          return Container(
                            width: 18,
                            height: 18,
                            decoration: BoxDecoration(
                              color: tickController.tickStates[6].value
                                  ? const Color(0xffEE7D42)
                                  : Colors.grey.shade100,
                            ),
                            child: tickController.tickStates[6].value
                                ? const Center(
                                    child: Icon(
                                    Icons.check,
                                    color: Colors.white,
                                    size: 15,
                                  ))
                                : null,
                          );
                        }),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        '祝',
                        style: TextStyle(
                          fontFamily: 'Noto Sans',
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          tickController.toggleTick(7);
                        },
                        child: Obx(() {
                          return Container(
                            width: 18,
                            height: 18,
                            decoration: BoxDecoration(
                              color: tickController.tickStates[7].value
                                  ? const Color(0xffEE7D42)
                                  : Colors.grey.shade100,
                            ),
                            child: tickController.tickStates[7].value
                                ? const Center(
                                    child: Icon(
                                    Icons.check,
                                    color: Colors.white,
                                    size: 15,
                                  ))
                                : null,
                          );
                        }),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  '料理カテゴリー*',
                  style: TextStyle(
                    fontFamily: 'Noto Sans',
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                GetBuilder<ProfileController>(
                  init: ProfileController(),
                  builder: (profileController) => Container(
                    width: 200,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                    ),
                    child: Center(
                      child: DropdownButton<String>(
                        icon: const Icon(
                          Icons.keyboard_arrow_down_outlined,
                          color: Colors.grey,
                        ),
                        underline: Container(),
                        value: profileController.cookingCategory,
                        onChanged: (value) {
                          profileController.cookCategory(value!);
                        },
                        items: [
                          '料理カテゴリー選択',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: const TextStyle(
                                fontFamily: 'Noto Sans',
                                color: Colors.grey,
                                fontSize: 15,
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  '予算*',
                  style: TextStyle(
                    fontFamily: 'Noto Sans',
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    GetBuilder<ProfileController>(
                      init: ProfileController(),
                      builder: (profileController) => Container(
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                        ),
                        child: Center(
                          child: DropdownButton<String>(
                            icon: const Icon(
                              Icons.keyboard_arrow_down_outlined,
                              color: Colors.grey,
                            ),
                            underline: Container(),
                            value: profileController.bugetOptions,
                            onChanged: (String? value) {
                              profileController.budgetOption(value!);
                            },
                            items: budget
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: const TextStyle(
                                    fontFamily: 'Noto Sans',
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      '~',
                      style: TextStyle(
                        fontFamily: 'Noto Sans',
                        color: Colors.black,
                        fontSize: 30,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    GetBuilder<ProfileController>(
                      init: ProfileController(),
                      builder: (profileController) => Container(
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                        ),
                        child: Center(
                          child: DropdownButton<String>(
                            icon: const Icon(
                              Icons.keyboard_arrow_down_outlined,
                              color: Colors.grey,
                            ),
                            underline: Container(),
                            value: profileController.bugetOptions,
                            onChanged: (String? value) {
                              profileController.budgetOption(value!);
                            },
                            items: budget
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: const TextStyle(
                                    fontFamily: 'Noto Sans',
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'キャッチコピー*',
                  style: TextStyle(
                    fontFamily: 'Noto Sans',
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey.shade100,
                      hintText: '美味しい！リーズナブルなオムライスランチ！',
                      hintStyle: TextStyle(
                        fontFamily: 'Noto Sans',
                        color: Colors.grey.shade500,
                        fontSize: 15,
                      ),
                      border: InputBorder.none),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  '座席数*',
                  style: TextStyle(
                    fontFamily: 'Noto Sans',
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey.shade100,
                      hintText: '40席',
                      hintStyle: TextStyle(
                        fontFamily: 'Noto Sans',
                        color: Colors.grey.shade500,
                        fontSize: 15,
                      ),
                      border: InputBorder.none),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  '喫煙席*',
                  style: TextStyle(
                    fontFamily: 'Noto Sans',
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          tickController.toggleTick(8);
                        },
                        child: Obx(() {
                          return Container(
                            width: 18,
                            height: 18,
                            decoration: BoxDecoration(
                              color: tickController.tickStates[8].value
                                  ? const Color(0xffEE7D42)
                                  : Colors.grey.shade100,
                            ),
                            child: tickController.tickStates[8].value
                                ? const Center(
                                    child: Icon(
                                    Icons.check,
                                    color: Colors.white,
                                    size: 15,
                                  ))
                                : null,
                          );
                        }),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        '有',
                        style: TextStyle(
                          fontFamily: 'Noto Sans',
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          tickController.toggleTick(9);
                        },
                        child: Obx(() {
                          return Container(
                            width: 18,
                            height: 18,
                            decoration: BoxDecoration(
                              color: tickController.tickStates[9].value
                                  ? const Color(0xffEE7D42)
                                  : Colors.grey.shade100,
                            ),
                            child: tickController.tickStates[9].value
                                ? const Center(
                                    child: Icon(
                                    Icons.check,
                                    color: Colors.white,
                                    size: 15,
                                  ))
                                : null,
                          );
                        }),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        '無',
                        style: TextStyle(
                          fontFamily: 'Noto Sans',
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  '駐車場*',
                  style: TextStyle(
                    fontFamily: 'Noto Sans',
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          tickController.toggleTick(10);
                        },
                        child: Obx(() {
                          return Container(
                            width: 18,
                            height: 18,
                            decoration: BoxDecoration(
                              color: tickController.tickStates[10].value
                                  ? const Color(0xffEE7D42)
                                  : Colors.grey.shade100,
                            ),
                            child: tickController.tickStates[10].value
                                ? const Center(
                                    child: Icon(
                                    Icons.check,
                                    color: Colors.white,
                                    size: 15,
                                  ))
                                : null,
                          );
                        }),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        '有',
                        style: TextStyle(
                          fontFamily: 'Noto Sans',
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          tickController.toggleTick(11);
                        },
                        child: Obx(() {
                          return Container(
                            width: 18,
                            height: 18,
                            decoration: BoxDecoration(
                              color: tickController.tickStates[11].value
                                  ? const Color(0xffEE7D42)
                                  : Colors.grey.shade100,
                            ),
                            child: tickController.tickStates[11].value
                                ? const Center(
                                    child: Icon(
                                    Icons.check,
                                    color: Colors.white,
                                    size: 15,
                                  ))
                                : null,
                          );
                        }),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        '無',
                        style: TextStyle(
                          fontFamily: 'Noto Sans',
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  '来店プレゼント*',
                  style: TextStyle(
                    fontFamily: 'Noto Sans',
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          tickController.toggleTick(12);
                        },
                        child: Obx(() {
                          return Container(
                            width: 18,
                            height: 18,
                            decoration: BoxDecoration(
                              color: tickController.tickStates[12].value
                                  ? const Color(0xffEE7D42)
                                  : Colors.grey.shade100,
                            ),
                            child: tickController.tickStates[12].value
                                ? const Center(
                                    child: Icon(
                                    Icons.check,
                                    color: Colors.white,
                                    size: 15,
                                  ))
                                : null,
                          );
                        }),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        '有（最大３枚まで）',
                        style: TextStyle(
                          fontFamily: 'Noto Sans',
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          tickController.toggleTick(13);
                        },
                        child: Obx(() {
                          return Container(
                            width: 18,
                            height: 18,
                            decoration: BoxDecoration(
                              color: tickController.tickStates[13].value
                                  ? const Color(0xffEE7D42)
                                  : Colors.grey.shade100,
                            ),
                            child: tickController.tickStates[13].value
                                ? const Center(
                                    child: Icon(
                                    Icons.check,
                                    color: Colors.white,
                                    size: 15,
                                  ))
                                : null,
                          );
                        }),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        '無',
                        style: TextStyle(
                          fontFamily: 'Noto Sans',
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Image(
                          image: AssetImage(
                              'lib/images/スクリーンショット 2021-11-07 0.37 2.png')),
                      Image(
                          image: AssetImage(
                              'lib/images/スクリーンショット 2021-11-07 0.50.png')),
                      Image(
                          image: AssetImage(
                              'lib/images/スクリーンショット 2021-11-07 0.51.png')),
                    ],
                  ),
                ),
                const Text(
                  '来店プレゼント名*',
                  style: TextStyle(
                    fontFamily: 'Noto Sans',
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey.shade100,
                      hintText: 'いちごクリームアイスクリーム, ジュース',
                      hintStyle: TextStyle(
                        fontFamily: 'Noto Sans',
                        color: Colors.grey.shade500,
                        fontSize: 15,
                      ),
                      border: InputBorder.none),
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(const HomePage());
                    },
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        backgroundColor: const Color(0xffFAAA14)),
                    child: const Text(
                      '編集を保存',
                      style: TextStyle(
                        fontFamily: 'Noto Sans',
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
