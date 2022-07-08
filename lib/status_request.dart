import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yoshlar_daftar/bloc/status/request_bloc.dart';
import 'package:yoshlar_daftar/repository/status/status_repository.dart';
import 'package:yoshlar_daftar/result_check_page.dart';
import 'package:yoshlar_daftar/widgets/custom_text_field.dart';
import 'package:yoshlar_daftar/widgets/simple_button.dart';
import 'package:dio/dio.dart';

class StatusPage extends StatefulWidget {
  const StatusPage({Key? key}) : super(key: key);

  @override
  State<StatusPage> createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  final bloc = RequestBloc();
  final repo = StatusRepository();
  TextEditingController controllerCode = TextEditingController();
  TextEditingController controllerNumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final scaffold = ScaffoldMessenger.of(context);
    return BlocProvider.value(
      value: bloc,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: BlocConsumer<RequestBloc, RequestState>(
          listener: (context, state) {
            if (state is RequestFailed) {
              scaffold.showSnackBar(
                const SnackBar(
                  backgroundColor: Colors.redAccent,
                  content: Text("Xatolik sodir bo'ldi"),
                ),
              );
            }
          },
          builder: (context, state) {
            print('STATE IS $state');
            if (state is RequestLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (state is RequestSuccess) {
              WidgetsBinding.instance!.addPostFrameCallback((_) {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (_) => const ResultCheckPage()));
              });
            }
            return SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 14.0, vertical: 55),
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
                          '   Ariza holatini tekshirish',
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
                    const SizedBox(height: 20),
                    CustomTextField(
                        hint: 'Ariza ID raqami', controller: controllerNumber),
                    const SizedBox(height: 20),
                    CustomTextField(
                        type: TextInputType.number,
                        hint: 'Tekshirish kodi',
                        controller: controllerCode),
                    const SizedBox(height: 41),
                    SimpleButton(
                      text: 'Tekshirish',
                      onTap: () {
                        if (controllerCode.text.isEmpty) {
                          scaffold.showSnackBar(
                            const SnackBar(
                              backgroundColor: Colors.redAccent,
                              content: Text("Kodni kiritish majburiy!"),
                            ),
                          );
                        }
                        if (controllerNumber.text.isEmpty) {
                          scaffold.showSnackBar(
                            const SnackBar(
                              backgroundColor: Colors.redAccent,
                              content: Text("Ariza raqamini kiriting!"),
                            ),
                          );
                        }
                        if (controllerCode.text.isNotEmpty &&
                            controllerNumber.text.isNotEmpty) {
                          bloc.add(CheckPressed(
                              controllerCode.text, controllerNumber.text));
                        }
                      },
                      style: const TextStyle(color: Colors.white, fontSize: 18),
                      color: const Color(0xff133E9F),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
