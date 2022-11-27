import 'package:flutter/material.dart';

import 'models/page_1_model.dart';

class Page_1 extends StatefulWidget {
  const Page_1({Key? key}) : super(key: key);

  @override
  State<Page_1> createState() => _Page_1State();
}

class _Page_1State extends State<Page_1> {
  List<PageOne> list_page_one = [
    PageOne(title: 'Shopping', date: 'Tue 12.05.2021', price: '\$29.90'),
    PageOne(title: 'Movie Ticket', date: 'Mon 11.05.2021', price: '\$9.50'),
    PageOne(title: 'Amazon', date: 'Mon 11.05.2021', price: '\$19.30'),
    PageOne(title: "Udemy", date: "Wed 13.05.2021", price: '\$10.45')
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: const Color(0xffF5F5F5),
          body: Stack(
            children: [
              Positioned(top: 0, right: 0, child: Image.asset('down.png')),
              Positioned(left: 0, top: 246, child: Image.asset('up.png')),
              Padding(
                padding: const EdgeInsets.only(top: 67, left: 24, right: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Stack(
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
                        Padding(
                          padding: const EdgeInsets.only(bottom: 26),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Good morning',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w300),
                              ),
                              const Text(
                                'ANDREA',
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Container(
                      height: 197,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                          color: Colors.white),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 26, left: 16),
                            child: Text(
                              'Current Balance',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 14),
                            ),
                          ),
                          const Padding(
                            padding:
                                EdgeInsets.only(left: 16, top: 15, bottom: 19),
                            child: Text('\$12567.89',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 28)),
                          ),
                          Container(
                            width: 500,
                            height: 88,
                            decoration: const BoxDecoration(
                                color: Color(0xff133FDB),
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(16),
                                    bottomRight: Radius.circular(16))),
                            child: Padding(
                              padding: const EdgeInsets.all(21.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Text(
                                    '3452 1235 7894 1678',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white),
                                  ),
                                  const Text(
                                    '05/2025',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 35, bottom: 16),
                      child: Text(
                        'LAST transactions',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Color(0xff858585)),
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          itemCount: list_page_one.length,
                          itemBuilder: (context, index) {
                            return Container(
                              height: 76,
                              width: 500,
                              margin: const EdgeInsets.only(bottom: 16),
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(16))),
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          list_page_one[index].title,
                                          style: const TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Text(
                                          list_page_one[index].date,
                                          style: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w300,
                                              color: Color(0xff858585)),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      list_page_one[index].price,
                                      style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
