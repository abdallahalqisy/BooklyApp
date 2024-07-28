import 'package:booklyapp/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomErrorWidgets extends StatelessWidget {
  const CustomErrorWidgets({super.key, required this.errMessage});
  final String errMessage;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errMessage,
        style: Styles.textStyle18,
      ),
    );
  }
}
