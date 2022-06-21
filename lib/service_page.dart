import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yoshlar_daftar/result_page.dart';
import 'package:yoshlar_daftar/widgets/custom_text_field.dart';
import 'package:yoshlar_daftar/widgets/service_item.dart';
import 'package:yoshlar_daftar/widgets/simple_button.dart';

class ServicePage extends StatefulWidget {
  const ServicePage({Key? key}) : super(key: key);

  @override
  State<ServicePage> createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 55),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: 46,
                      height: 46,
                      child: const Icon(
                        CupertinoIcons.arrow_left,
                        color: Colors.white,
                        size: 23,
                      ),
                      decoration: const BoxDecoration(
                          color: Color(0xff0083FC),
                          borderRadius: BorderRadius.all(Radius.circular(18))),
                    ),
                  ),
                  CircleAvatar(
                    radius: 33,
                    backgroundColor: Colors.blue.shade50,
                    backgroundImage: const AssetImage('assets/avatar.png'),
                  )
                ],
              ),
              const SizedBox(height: 19),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    '   Yashash manzili',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  Container(
                    width: 140,
                    height: 0.5,
                    color: Colors.black,
                  )
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: CustomTextField(
                      icon: const Icon(CupertinoIcons.chevron_down, size: 17),
                      hint: 'Viloyat',
                      controller: TextEditingController(),
                    ),
                  ),
                  SizedBox(width: 14),
                  Expanded(
                    child: CustomTextField(
                      icon: const Icon(CupertinoIcons.chevron_down, size: 17),
                      hint: 'Tuman',
                      controller: TextEditingController(),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: CustomTextField(
                      icon: const Icon(
                        CupertinoIcons.chevron_down,
                        size: 17,
                      ),
                      hint: 'Mahalla',
                      controller: TextEditingController(),
                    ),
                  ),
                  const SizedBox(width: 14),
                  Expanded(child: Container())
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    '   Xizmatlar',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  Container(
                    width: 200,
                    height: 0.5,
                    color: Colors.black,
                  )
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: const [
                      ServiceItem(
                          text: 'To‘lov kontrakt bo‘yicha',
                          icon: 'assets/credit.png'),
                      ServiceItem(
                          text:
                              'Uy joy qurish uchun garovsiz kredit olishga kafillik',
                          icon: 'assets/home.png'),
                      ServiceItem(
                          text:
                              'Yosh oilalarga turar joy ijarasi kompensatsiyasini to‘lash',
                          icon: 'assets/young_family.png'),
                      ServiceItem(
                          text:
                              'Haydovchilik kurslarida o‘qish xarajatlarini qoplash',
                          icon: 'assets/car.png'),
                    ],
                  ),
                  Column(
                    children: const [
                      ServiceItem(
                          text: 'Psixologik\n', icon: 'assets/psycho.png'),
                      ServiceItem(
                          text: 'O‘qish va imtihon harajatlarini qoplab berish',
                          icon: 'assets/book.png'),
                      ServiceItem(
                          text: 'Nogironligi bo‘lgan yoshlarga asbob-uskuna...',
                          icon: 'assets/asbob.png'),
                      ServiceItem(
                          text: 'Davolanish harajatlari bo‘yicha',
                          icon: 'assets/health.png'),
                    ],
                  ),
                  Column(
                    children: [
                      const ServiceItem(
                          text: 'Bir martalik moddiy yordam',
                          icon: 'assets/money.png'),
                      const ServiceItem(
                          text:
                              'Nogironlarga kasb, IT,  umumtaʼlim fanlari va xorijiy..',
                          icon: 'assets/invalid.png'),
                      const ServiceItem(
                          text:
                              'Safarbarlik chaqiruvi rezervi xizmati bo‘yicha',
                          icon: 'assets/militiary.png'),
                      Container(
                        margin: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                            border: Border.all(
                                color: const Color(0xc70083fc), width: 0.8)),
                        width: MediaQuery.of(context).size.width * (111 / 390),
                        height: MediaQuery.of(context).size.height * (28 / 200),
                        child: Padding(
                          padding:
                              const EdgeInsets.only(left: 9, top: 9, right: 9),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Image.asset(
                                'assets/ellipse.png',
                                width: 38,
                                height: 38,
                              ),
                              const Icon(
                                Icons.add,
                                size: 25,
                                color: Color(0x4d000000),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
