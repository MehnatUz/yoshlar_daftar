import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yoshlar_daftar/skip_2page.dart';
import 'package:yoshlar_daftar/widgets/custom_text_field.dart';
import 'package:yoshlar_daftar/widgets/simple_button.dart';

class ResultCheckPage extends StatelessWidget {
  const ResultCheckPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 55),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
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
                                borderRadius:
                                    BorderRadius.all(Radius.circular(18))),
                          ),
                        ),
                        CircleAvatar(
                          radius: 33,
                          backgroundColor: Colors.blue.shade50,
                          backgroundImage:
                              const AssetImage('assets/avatar.png'),
                        )
                      ],
                    ),
                    const SizedBox(height: 19),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Ariza holatini tekshirish',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                        Container(
                          width: 140,
                          height: 0.5,
                          color: Colors.black,
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 41),
                        const Text(
                          'Hurtle fuqaro arizangiz qabul qilindi!',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(height: 14),
                        const Text(
                          'ID raqam: 00131607',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(height: 14),
                        const Text(
                          'Kod: 21663',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(height: 20),
                        Container(
                          width: double.infinity,
                          height: 0.5,
                          color: Colors.black,
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          'Sektor rahbar: Eshonkulov G\'anisher Abdusamatovich \n(tel. 94 576-18-85)',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(height: 14),
                        const Text(
                          'Tuman agentlik rahbari: Pirmuxamedov Farrux Dilmurotovich \n(tel. 94 576-18-85)',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(height: 14),
                        const Text(
                          '(ID raqam va tekshirish uchun kodni saqlab qoyishingizni soraymiz)',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    const SizedBox(height: 121),
                    SimpleButton(
                      icon: const Icon(
                        CupertinoIcons.arrow_left,
                        color: Colors.white,
                      ),
                      text: 'Bosh sahifaga qaytish',
                      onTap: () {
                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (_) => const HomePage(),
                          ),
                        );
                      },
                      style: const TextStyle(color: Colors.white, fontSize: 18),
                      color: const Color(0xff133E9F),
                    )
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
