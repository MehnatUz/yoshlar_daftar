import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yoshlar_daftar/skip_2page.dart';

class SkipPage extends StatelessWidget {
  const SkipPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 40, right: 10),
        child: FloatingActionButton(
          elevation: 8,
          child: const Icon(CupertinoIcons.arrow_right),
          onPressed: () {
            Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (_) => const HomePage(),
              ),
            );
          },
        ),
      ),
      body: Container(
        color: Colors.red,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Image.asset(
              'assets/skipimg.jpg',
              fit: BoxFit.fitHeight,
              height: double.infinity,
              width: double.infinity,
            ),
            Image.asset(
              'assets/black_gradient.png',
              fit: BoxFit.fill,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 62),
              child: Image.asset('assets/logo.png'),
            ),
          ],
        ),
      ),
    );
  }
}
