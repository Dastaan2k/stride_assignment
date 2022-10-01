import 'package:flutter/material.dart';

class StrideTextField extends StatelessWidget {
  const StrideTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          prefixIcon: const Icon(Icons.search),
          suffixIcon: const Icon(Icons.mic_none, color: Colors.black),
          filled: true, enabled: true,
          hintText: 'Search',
          hintStyle: const TextStyle(color: Color(0xff9E9E9E)),
          enabledBorder: OutlineInputBorder(borderSide: const BorderSide(color: Colors.transparent), borderRadius: BorderRadius.circular(7.5)),
          border: OutlineInputBorder(borderSide: const BorderSide(color: Colors.transparent), borderRadius: BorderRadius.circular(7.5)),
          focusedBorder: OutlineInputBorder(borderSide: const BorderSide(color: Colors.transparent), borderRadius: BorderRadius.circular(7.5))
      )
    );
  }
}
