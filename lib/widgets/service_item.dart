import 'dart:ui';

import 'package:flutter/material.dart';

class ServiceItem extends StatelessWidget {
  const ServiceItem({Key? key, required this.text, required this.icon})
      : super(key: key);
  final String text;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
          border: Border.all(color: const Color(0xc70083fc), width: 0.8)),
      width: MediaQuery.of(context).size.width * (111 / 390),
      height: MediaQuery.of(context).size.height * (28 / 200),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 9, top: 9, right: 9),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    'assets/ellipse.png',
                    width: 38,
                    height: 38,
                  ),
                  Image.asset(
                    icon,
                    width: 23,
                    height: 23,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Text(
                text,
                maxLines: 3,
                style: const TextStyle(fontSize: 11),
              ),
            )
          ]),
    );
  }
}
