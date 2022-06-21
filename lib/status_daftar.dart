import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yoshlar_daftar/widgets/custom_text_field.dart';
import 'package:yoshlar_daftar/widgets/simple_button.dart';

class StatusDaftarPage extends StatefulWidget {
  const StatusDaftarPage({Key? key}) : super(key: key);

  @override
  State<StatusDaftarPage> createState() => _StatusDaftarPageState();
}

class _StatusDaftarPageState extends State<StatusDaftarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 55),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: (){
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
                    '   Daftar holatini tekshirish',
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
              CustomTextField(
                  onTap: () {},
                  hint: 'Ariza ID raqami',
                  controller: TextEditingController(),
                  icon: const Icon(CupertinoIcons.chevron_down)),
              const SizedBox(height: 20),
              CustomTextField(
                  hint: 'Passport', controller: TextEditingController()),
              const SizedBox(height: 20),
              CustomTextField(
                  hint: 'Tug\'ulgan sana',
                  controller: TextEditingController(),
                  icon: Icon(CupertinoIcons.xmark_circle_fill)),
              const SizedBox(height: 41),
              SimpleButton(
                text: 'Tekshirish',
                onTap: () {},
                style: const TextStyle(color: Colors.white, fontSize: 18),
                color: const Color(0xff133E9F),
              )
            ],
          ),
        ),
      ),
    );
  }
}
