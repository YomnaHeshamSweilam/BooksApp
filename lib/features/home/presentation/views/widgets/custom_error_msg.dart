
import 'package:booksapp/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomErrorMsg extends StatelessWidget {
  const CustomErrorMsg({super.key, required this.errorMsg, });
 final String errorMsg;
  @override
  Widget build(BuildContext context) {
    return Text(errorMsg, style: Styles.textStyle18,);
  }
}