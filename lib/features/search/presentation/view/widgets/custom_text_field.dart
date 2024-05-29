import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          focusColor: Colors.white,
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(12)),
          hintText: 'Search',
          suffixIcon: const Opacity(
              opacity: .7, child: Icon(FontAwesomeIcons.magnifyingGlass))),
    );
  }
}
