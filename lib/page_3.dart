import 'package:flutter/material.dart';

import 'models/page_3_model.dart';

class Page_3 extends StatefulWidget {
  const Page_3({Key? key}) : super(key: key);

  @override
  State<Page_3> createState() => _Page_3State();
}

class _Page_3State extends State<Page_3> {
  List<PageThree> list_page_three = [
    PageThree(
        money: 'Money In',
        title: 'In Budget',
        price: '\$50.00/ \$100.00',
        description: 'Shopping ',
        cost: '+ \$3,456.98',
        money_color: const Color(0xffF8E192),
        title_color: const Color(0xffD1ECF7)),
    PageThree(
        money: 'Money Out',
        title: 'Out of Budget',
        price: '\$35.00/ \$140.00',
        description: 'Subscriptions',
        cost: '- \$567.25',
        money_color: const Color(0xffB6E0F3),
        title_color: const Color(0xffFAE2EE))
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: const Color(0xffF5F5F5),
            body: Padding(
              padding: const EdgeInsets.only(left: 24, right: 24),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 40.0),
                        child: Stack(
                          children: [
                            Container(
                              height: 58,
                              width: 58,
                              margin:
                                  const EdgeInsets.only(right: 22, bottom: 26),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: const DecorationImage(
                                      image: AssetImage('andrea.png'),
                                      fit: BoxFit.cover),
                                  border: Border.all(
                                      color: const Color(0xff133FDB))),
                            ),
                            Positioned(
                              right: 23,
                              child: Container(
                                height: 13,
                                width: 13,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: const Color(0xffDB1337),
                                    border: Border.all(
                                        color: Colors.white, width: 2)),
                              ),
                            )
                          ],
                        ),
                      ),
                      const Text(
                        'Reports',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18),
                      ),
                      const SizedBox(
                        height: 50,
                        width: 50,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 79,
                    child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: list_page_three.length,
                        itemBuilder: (context, index) {
                          return Container(
                            height: 79,
                            width: 175,
                            margin: const EdgeInsets.only(right: 15),
                            padding: const EdgeInsets.all(14),
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(8)),
                              color: list_page_three[index].money_color,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  list_page_three[index].money,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      list_page_three[index].cost,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16),
                                    ),
                                    const Icon(Icons.upgrade,
                                        color: Color(0xff133FDB))
                                  ],
                                )
                              ],
                            ),
                          );
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16, bottom: 16),
                    child: Image.asset('chart.png'),
                  ),
                  Expanded(
                      child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          itemCount: list_page_three.length,
                          itemBuilder: (context, index) {
                            return Container(
                              height: 76,
                              margin: const EdgeInsets.only(bottom: 16),
                              decoration: BoxDecoration(
                                  color: list_page_three[index].title_color,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(16))),
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      list_page_three[index].title,
                                      style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          list_page_three[index].description,
                                          style: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w300,
                                              color: Color(0xff858585)),
                                        ),
                                        Text(
                                          list_page_three[index].price,
                                          style: const TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xff333333)),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            );
                          }))
                ],
              ),
            )));
  }
}
