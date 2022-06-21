import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {Key? key,
      required this.hint,
      required this.controller,
      this.icon,
      this.onTap,
      this.maaxlines})
      : super(key: key);
  final String hint;
  final int? maaxlines;
  final Widget? icon;
  final VoidCallback? onTap;

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '   $hint',
            style: const TextStyle(fontSize: 13, color: Color(0xb33d404b)),
          ),
          const SizedBox(height: 6),
          Container(
            decoration: const BoxDecoration(
                color: Color(0xffF7F7F9),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            width: double.infinity,
            padding: const EdgeInsets.only(
              left: 24,
            ),
            child: TextField(
              maxLines: maaxlines,
              controller: controller,
              decoration: InputDecoration(
                  enabled: onTap != null ? false : true,
                  suffixIcon: icon,
                  border: InputBorder.none,
                  hintStyle: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Color(0x801a1a1a)),
                  hintText: ''),
            ),
          ),
        ],
      ),
    );
  }
}
