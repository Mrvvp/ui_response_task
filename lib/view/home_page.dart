import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_response_task/controller/home_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController controller = Get.put(HomeController());
  final List<String> daysOfWeek = [
    '木',
    '金',
    '土',
    '日',
    '月',
    '火',
    '水',
    '木',
    '金',
    '土',
    '日',
    '月',
    '火',
    '水',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomRight,
        children: [
          SingleChildScrollView(
            child: SafeArea(
              child: SingleChildScrollView(
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 20, left: 20, top: 50),
                          child: Row(
                            children: [
                              const Text(
                                '北海道, 札幌市',
                                style: TextStyle(
                                    fontFamily: 'Noto Sans',
                                    fontWeight: FontWeight.bold),
                              ),
                              const Spacer(),
                              IconButton(
                                  onPressed: () {
                                    showDialog(
                                      context: context,
                                      builder: (context) => const AlertDialog(
                                        title: Center(
                                          child: Text(
                                            'Filters',
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
                                      'lib/images/Filter_icon.png')),
                              IconButton(
                                  onPressed: () {
                                    showDialog(
                                      context: context,
                                      builder: (context) => const AlertDialog(
                                        title: Center(
                                          child: Text(
                                            'Likes',
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
                                  icon: Image.asset('lib/images/Vector.png')),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 50,
                          decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [
                                Color(0xffFAAA14),
                                Color(0xffFFD78D),
                              ],
                                  begin: Alignment.bottomLeft,
                                  end: Alignment.topRight)),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                '2022年5月 ',
                                style: TextStyle(
                                    fontFamily: 'Noto Sans',
                                    fontWeight: FontWeight.bold),
                              ),
                              Obx(() => Text(
                                    '${controller.selectedIndex.value + 1}',
                                    style: const TextStyle(
                                        fontFamily: 'Noto Sans',
                                        fontWeight: FontWeight.bold),
                                  )),
                              Obx(() => Text(
                                    '${controller.selectedDay}',
                                    style: const TextStyle(
                                        fontFamily: 'Noto Sans',
                                        fontWeight: FontWeight.bold),
                                  )),
                              const Text(
                                '（木）',
                                style: TextStyle(
                                    fontFamily: 'Noto Sans',
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: List.generate(daysOfWeek.length, (index) {
                              return GestureDetector(
                                onTap: () {
                                  controller.toggleSelected(index);
                                  controller
                                      .updateSelectedDay(daysOfWeek[index]);
                                },
                                child: Obx(() {
                                  bool isSelected =
                                      index == controller.selectedIndex.value;
                                  return Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: AnimatedContainer(
                                      duration:
                                          const Duration(milliseconds: 300),
                                      width: isSelected ? 65 : 60,
                                      height: 80,
                                      decoration: BoxDecoration(
                                        color: isSelected
                                            ? const Color.fromARGB(
                                                255, 255, 184, 52)
                                            : Colors.white,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      alignment: Alignment.center,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            daysOfWeek[index],
                                            style: TextStyle(
                                              color: isSelected
                                                  ? Colors.black
                                                  : Colors.black,
                                              fontFamily: 'Noto Sans',
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            '${index + 1}',
                                            style: TextStyle(
                                              color: isSelected
                                                  ? Colors.black
                                                  : Colors.black,
                                              fontFamily: 'Noto Sans',
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                }),
                              );
                            }),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, top: 40),
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  width: 340,
                                  height: 420,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                          fit: BoxFit.fill,
                                          'lib/images/スクリーンショット 2022-06-08 11.42 1.png'),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 20, right: 20, top: 20),
                                        child: Text(
                                          '介護有料老人ホームひまわり倶楽部の介護職／ヘ\nルパー求人（パート／バイト）',
                                          style: TextStyle(
                                            fontFamily: 'Noto Sans',
                                            color: Colors.black,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            top: 10, left: 40, right: 20),
                                        child: Row(
                                          children: [
                                            Text(
                                              '介護付き有料老人ホーム',
                                              style: TextStyle(
                                                fontFamily: 'Noto Sans',
                                                color: Color(0xffFAAA14),
                                                fontSize: 12,
                                              ),
                                            ),
                                            Spacer(),
                                            Text('¥ 6,000',
                                                style: TextStyle(
                                                  fontFamily: 'Noto Sans',
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                )),
                                          ],
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 20, top: 20, right: 20),
                                        child: Text(
                                          '5月 31日（水）08 : 00 ~ 17 : 00',
                                          style: TextStyle(
                                            fontFamily: 'Noto Sans',
                                            color: Colors.black,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 20, top: 5, right: 20),
                                        child: Text(
                                          '北海道札幌市東雲町3丁目916番地17号',
                                          style: TextStyle(
                                            fontFamily: 'Noto Sans',
                                            color: Colors.black,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 20, top: 5, right: 20),
                                        child: Text(
                                          '交通費 300円',
                                          style: TextStyle(
                                            fontFamily: 'Noto Sans',
                                            color: Colors.black,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 20, top: 5, right: 20),
                                        child: Row(
                                          children: [
                                            Text(
                                              '住宅型有料老人ホームひまわり倶楽部',
                                              style: TextStyle(
                                                fontFamily: 'Noto Sans',
                                                color: Colors.grey.shade400,
                                                fontSize: 12,
                                              ),
                                            ),
                                            const Spacer(),
                                            Obx(() => IconButton(
                                                  icon: Icon(
                                                    controller.isLikedList[0]
                                                            .value
                                                        ? Icons.favorite
                                                        : Icons.favorite_border,
                                                    color: controller
                                                            .isLikedList[0]
                                                            .value
                                                        ? Colors.red
                                                        : Colors.grey,
                                                  ),
                                                  onPressed: () {
                                                    controller.toggleLike(0);
                                                  },
                                                )),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 150,
                                ),
                                child: Container(
                                  width: 90,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                          255, 219, 73, 73),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: const Center(
                                    child: Text(
                                      '本日まで',
                                      style: TextStyle(
                                        fontFamily: 'Noto Sans',
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 10),
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  width: 320,
                                  height: 420,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                          fit: BoxFit.fill,
                                          'lib/images/スクリーンショット 2022-06-08 11.42 1.png'),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 20, right: 20, top: 20),
                                        child: Text(
                                          '介護有料老人ホームひまわり倶楽部の介護職／ヘ\nルパー求人（パート／バイト）',
                                          style: TextStyle(
                                            fontFamily: 'Noto Sans',
                                            color: Colors.black,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            top: 10, left: 40, right: 20),
                                        child: Row(
                                          children: [
                                            Text(
                                              '介護付き有料老人ホーム',
                                              style: TextStyle(
                                                fontFamily: 'Noto Sans',
                                                color: Color(0xffFAAA14),
                                                fontSize: 12,
                                              ),
                                            ),
                                            Spacer(),
                                            Text('¥ 6,000',
                                                style: TextStyle(
                                                  fontFamily: 'Noto Sans',
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                )),
                                          ],
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 20, top: 20, right: 20),
                                        child: Text(
                                          '5月 31日（水）08 : 00 ~ 17 : 00',
                                          style: TextStyle(
                                            fontFamily: 'Noto Sans',
                                            color: Colors.black,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 20, top: 5, right: 20),
                                        child: Text(
                                          '北海道札幌市東雲町3丁目916番地17号',
                                          style: TextStyle(
                                            fontFamily: 'Noto Sans',
                                            color: Colors.black,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 20, top: 5, right: 20),
                                        child: Text(
                                          '交通費 300円',
                                          style: TextStyle(
                                            fontFamily: 'Noto Sans',
                                            color: Colors.black,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 20, top: 5, right: 20),
                                        child: Row(
                                          children: [
                                            Text(
                                              '住宅型有料老人ホームひまわり倶楽部',
                                              style: TextStyle(
                                                fontFamily: 'Noto Sans',
                                                color: Colors.grey.shade400,
                                                fontSize: 12,
                                              ),
                                            ),
                                            const Spacer(),
                                            Obx(() => IconButton(
                                                  icon: Icon(
                                                    controller.isLikedList[1]
                                                            .value
                                                        ? Icons.favorite
                                                        : Icons.favorite_border,
                                                    color: controller
                                                            .isLikedList[1]
                                                            .value
                                                        ? Colors.red
                                                        : Colors.grey,
                                                  ),
                                                  onPressed: () {
                                                    controller.toggleLike(1);
                                                  },
                                                )),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 150,
                                ),
                                child: Container(
                                  width: 90,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                          255, 219, 73, 73),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: const Center(
                                    child: Text(
                                      '本日まで',
                                      style: TextStyle(
                                        fontFamily: 'Noto Sans',
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 20,
                            right: 10,
                          ),
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  width: 320,
                                  height: 420,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                          fit: BoxFit.fill,
                                          'lib/images/スクリーンショット 2022-06-08 11.42 1.png'),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 20, right: 20, top: 20),
                                        child: Text(
                                          '介護有料老人ホームひまわり倶楽部の介護職／ヘ\nルパー求人（パート／バイト）',
                                          style: TextStyle(
                                            fontFamily: 'Noto Sans',
                                            color: Colors.black,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            top: 10, left: 40, right: 20),
                                        child: Row(
                                          children: [
                                            Text(
                                              '介護付き有料老人ホーム',
                                              style: TextStyle(
                                                fontFamily: 'Noto Sans',
                                                color: Color(0xffFAAA14),
                                                fontSize: 12,
                                              ),
                                            ),
                                            Spacer(),
                                            Text('¥ 6,000',
                                                style: TextStyle(
                                                  fontFamily: 'Noto Sans',
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                )),
                                          ],
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 20, top: 20, right: 20),
                                        child: Text(
                                          '5月 31日（水）08 : 00 ~ 17 : 00',
                                          style: TextStyle(
                                            fontFamily: 'Noto Sans',
                                            color: Colors.black,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 20, top: 5, right: 20),
                                        child: Text(
                                          '北海道札幌市東雲町3丁目916番地17号',
                                          style: TextStyle(
                                            fontFamily: 'Noto Sans',
                                            color: Colors.black,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 20, top: 5, right: 20),
                                        child: Text(
                                          '交通費 300円',
                                          style: TextStyle(
                                            fontFamily: 'Noto Sans',
                                            color: Colors.black,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 20, top: 5, right: 20),
                                        child: Row(
                                          children: [
                                            Text(
                                              '住宅型有料老人ホームひまわり倶楽部',
                                              style: TextStyle(
                                                fontFamily: 'Noto Sans',
                                                color: Colors.grey.shade400,
                                                fontSize: 12,
                                              ),
                                            ),
                                            const Spacer(),
                                            Obx(() => IconButton(
                                                  icon: Icon(
                                                    controller.isLikedList[2]
                                                            .value
                                                        ? Icons.favorite
                                                        : Icons.favorite_border,
                                                    color: controller
                                                            .isLikedList[2]
                                                            .value
                                                        ? Colors.red
                                                        : Colors.grey,
                                                  ),
                                                  onPressed: () {
                                                    controller.toggleLike(2);
                                                  },
                                                )),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 150,
                                ),
                                child: Container(
                                  width: 90,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                          255, 219, 73, 73),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: const Center(
                                    child: Text(
                                      '本日まで',
                                      style: TextStyle(
                                        fontFamily: 'Noto Sans',
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 20,
                            right: 10,
                          ),
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  width: 320,
                                  height: 420,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                          fit: BoxFit.fill,
                                          'lib/images/スクリーンショット 2022-06-08 11.42 1.png'),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 20, right: 20, top: 20),
                                        child: Text(
                                          '介護有料老人ホームひまわり倶楽部の介護職／ヘ\nルパー求人（パート／バイト）',
                                          style: TextStyle(
                                            fontFamily: 'Noto Sans',
                                            color: Colors.black,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            top: 10, left: 40, right: 20),
                                        child: Row(
                                          children: [
                                            Text(
                                              '介護付き有料老人ホーム',
                                              style: TextStyle(
                                                fontFamily: 'Noto Sans',
                                                color: Color(0xffFAAA14),
                                                fontSize: 12,
                                              ),
                                            ),
                                            Spacer(),
                                            Text('¥ 6,000',
                                                style: TextStyle(
                                                  fontFamily: 'Noto Sans',
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                )),
                                          ],
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 20, top: 20, right: 20),
                                        child: Text(
                                          '5月 31日（水）08 : 00 ~ 17 : 00',
                                          style: TextStyle(
                                            fontFamily: 'Noto Sans',
                                            color: Colors.black,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 20, top: 5, right: 20),
                                        child: Text(
                                          '北海道札幌市東雲町3丁目916番地17号',
                                          style: TextStyle(
                                            fontFamily: 'Noto Sans',
                                            color: Colors.black,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 20, top: 5, right: 20),
                                        child: Text(
                                          '交通費 300円',
                                          style: TextStyle(
                                            fontFamily: 'Noto Sans',
                                            color: Colors.black,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 20, top: 5, right: 20),
                                        child: Row(
                                          children: [
                                            Text(
                                              '住宅型有料老人ホームひまわり倶楽部',
                                              style: TextStyle(
                                                fontFamily: 'Noto Sans',
                                                color: Colors.grey.shade400,
                                                fontSize: 12,
                                              ),
                                            ),
                                            const Spacer(),
                                            Obx(() => IconButton(
                                                  icon: Icon(
                                                    controller.isLikedList[3]
                                                            .value
                                                        ? Icons.favorite
                                                        : Icons.favorite_border,
                                                    color: controller
                                                            .isLikedList[3]
                                                            .value
                                                        ? Colors.red
                                                        : Colors.grey,
                                                  ),
                                                  onPressed: () {
                                                    controller.toggleLike(3);
                                                  },
                                                )),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 150,
                                ),
                                child: Container(
                                  width: 90,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                          255, 219, 73, 73),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: const Center(
                                    child: Text(
                                      '本日まで',
                                      style: TextStyle(
                                        fontFamily: 'Noto Sans',
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 80,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: FloatingActionButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => const AlertDialog(
                    title: Image(
                        image: AssetImage('lib/images/snazzy-image (1) 1.png')),
                  ),
                );
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              backgroundColor: Colors.white,
              child: Image.asset(
                'lib/images/pin.png',
                height: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
