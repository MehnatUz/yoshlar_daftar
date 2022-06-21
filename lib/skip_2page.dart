import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yoshlar_daftar/send_report.dart';
import 'package:yoshlar_daftar/send_request.dart';
import 'package:yoshlar_daftar/status_daftar.dart';
import 'package:yoshlar_daftar/status_request.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          color: const Color(0xffF0F2F4),
          child: Column(
            children: [
              Container(
                color: const Color(0xff01184E),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/skip2img.png',
                      fit: BoxFit.fitHeight,
                      height: double.infinity,
                      width: double.infinity,
                    ),
                    Image.asset(
                      'assets/blue_gradient.png',
                      fit: BoxFit.cover,
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 40, vertical: 62),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/skipgerb.png',
                                height: 64,
                                width: 63,
                              ),
                              Image.asset(
                                'assets/skip2text.png',
                                height: 64,
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      CupertinoPageRoute(
                                        builder: (_) => const SendRequest(),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'assets/adddoc.png',
                                          fit: BoxFit.fitHeight,
                                          width: 30,
                                          height: 40,
                                        ),
                                        const SizedBox(width: 19),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: const [
                                            Text(
                                              'Ariza',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18),
                                            ),
                                            Text(
                                              'yuborish',
                                              style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.white,
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                    padding: const EdgeInsets.only(
                                        left: 22,
                                        right: 75,
                                        top: 27,
                                        bottom: 26),
                                    decoration: const BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Color(0xFF122C91),
                                          Color(0xFF2A6FDB)
                                        ],
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight,
                                      ),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(20),
                                      ),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      CupertinoPageRoute(
                                        builder: (_) => const StatusPage(),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          'Ariza',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18),
                                        ),
                                        Text(
                                          'holatini\ntekshirish',
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.white,
                                          ),
                                        )
                                      ],
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 33, vertical: 20),
                                    decoration: const BoxDecoration(
                                      color: Color(0xff81E9E6),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(20),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      CupertinoPageRoute(
                                        builder: (_) =>
                                            const StatusDaftarPage(),
                                      ),
                                    );
                                  },
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        CupertinoPageRoute(
                                          builder: (_) =>
                                              const StatusDaftarPage(),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: const [
                                          Text(
                                            'Daftardagi',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18),
                                          ),
                                          Text(
                                            'holatni\ntekshirish',
                                            style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.white,
                                            ),
                                          )
                                        ],
                                      ),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 33, vertical: 20),
                                      decoration: const BoxDecoration(
                                        color: Color(0xff81E9E6),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(20),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      CupertinoPageRoute(
                                        builder: (_) => const SendReport(),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'assets/senddoc.png',
                                          fit: BoxFit.fitHeight,
                                          width: 30,
                                          height: 40,
                                        ),
                                        const SizedBox(width: 19),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: const [
                                            Text(
                                              'Shikoyat',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18),
                                            ),
                                            Text(
                                              'yuborish',
                                              style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.white,
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                    padding: const EdgeInsets.only(
                                        left: 22,
                                        right: 75,
                                        top: 27,
                                        bottom: 26),
                                    decoration: const BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Color(0xFF122C91),
                                          Color(0xFF2A6FDB)
                                        ],
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight,
                                      ),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(20),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 49),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                color: const Color(0xff01184E),
                child: Container(
                  decoration: const BoxDecoration(
                      color: Color(0xffF0F2F4),
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(25))),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 14.0, vertical: 31),
                        child: Image.asset('assets/aboutus.png'),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                    color: Color(0xff01184E),
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(25))),
                width: MediaQuery.of(context).size.width,
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 31),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(
                          'assets/partners.png',
                          height: 60,
                        ),
                        Image.asset(
                          'assets/hands.png',
                          height: 67,
                        ),
                      ],
                    ),
                    const SizedBox(height: 45),
                    Image.asset(
                      'assets/slide.png',
                    ),
                    const SizedBox(height: 54),
                    const Text(
                      'Bizning ijtimoiy tarmoqlar',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                      textAlign: TextAlign.left,
                    ),
                    const SizedBox(height: 31),
                    Image.asset(
                      'assets/share.png',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
