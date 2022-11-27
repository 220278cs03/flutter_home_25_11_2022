import 'package:flutter/material.dart';

import 'models/page_2_model.dart';

class Page_2 extends StatefulWidget {
  const Page_2({Key? key}) : super(key: key);

  @override
  State<Page_2> createState() => _Page_2State();
}

class _Page_2State extends State<Page_2> {
  List<PageTwo> list_page_two = [
    PageTwo(
        photo: 'logo_p.png',
        name: 'Evelyn',
        surname: 'Smith',
        card: 'AW BANK UNI 234-46589-000',
        color: const Color(0xffFBC2EB)),
    PageTwo(
        photo: 'logo_stripe.png',
        name: 'Emily',
        surname: 'Atkinson',
        card: 'PN BANK UNI 450-46589-000',
        color: const Color(0xffF4C96D)),
    PageTwo(
        photo: 'logo_k.png',
        name: 'Oliver',
        surname: 'Wilson',
        card: 'WS BANK UNI 450-42389-000',
        color: const Color(0xffE0C3FC)),
    PageTwo(
        photo: 'logo_n26.png',
        name: 'Sophie',
        surname: 'Baker',
        card: "AW BANK UNI 450-42389-000",
        color: const Color(0xffEBBBA7)),
    PageTwo(
        photo: "logo_p.png",
        name: 'Charlie',
        surname: 'William',
        card: 'DF BANK UNI 100-356389-000',
        color: const Color(0xff8FEFE9))
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xffF5F5F5),
      body: Padding(
        padding: const EdgeInsets.only(right: 24, left: 24),
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
                        margin: const EdgeInsets.only(right: 22, bottom: 26),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: const DecorationImage(
                                image: AssetImage('andrea.png'),
                                fit: BoxFit.cover),
                            border: Border.all(color: const Color(0xff133FDB))),
                      ),
                      Positioned(
                        right: 23,
                        child: Container(
                          height: 13,
                          width: 13,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: const Color(0xffDB1337),
                              border:
                                  Border.all(color: Colors.white, width: 2)),
                        ),
                      )
                    ],
                  ),
                ),
                const Text(
                  'Transfer',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                ),
                const Icon(Icons.add, color: Color(0xff133FDB))
              ],
            ),
            Container(
              height: 76,
              margin: const EdgeInsets.only(bottom: 35),
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: list_page_two.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 76,
                      width: 76,
                      margin: const EdgeInsets.only(right: 12),
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(16)),
                          color: Colors.white,
                          image: DecorationImage(
                              image: AssetImage(list_page_two[index].photo))),
                    );
                  }),
            ),
            Expanded(
                child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: list_page_two.length,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 86,
                        margin: const EdgeInsets.only(bottom: 16),
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(16))),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            children: [
                              Container(
                                height: 54,
                                width: 54,
                                margin: const EdgeInsets.only(right: 16),
                                padding: const EdgeInsets.only(left: 15),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: list_page_two[index].color),
                                child: Row(
                                  children: [
                                    Text(
                                      list_page_two[index].name[0],
                                      style: const TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white),
                                    ),
                                    Text(
                                      list_page_two[index].surname[0],
                                      style: const TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 5.0),
                                        child: Text(
                                          list_page_two[index].name,
                                          style: const TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(top: 5.0),
                                        child: Text(
                                          " ",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 5.0),
                                        child: Text(
                                          list_page_two[index].surname,
                                          style: const TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 5.0),
                                    child: Text(
                                      list_page_two[index].card,
                                      style: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w300,
                                          color: Color(0xff858585)),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    }))
          ],
        ),
      ),
    ));
  }
}
