import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/colors/app_colors.dart';
import '../../../constants/text_style/app_text_style.dart';
import '../../fist/controller/first_controller.dart';

class SecondView extends StatelessWidget {
  SecondView();
  final _firstController = Get.put<FirstController>(FirstController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.white,
        title: Center(
          child: Text('Second page', style: AppTextStyles.black),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: AppColors.grey),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 150, vertical: 15),
                child: Text('San: ${_firstController.san.value}',
                    style: AppTextStyles.size30),
              ),
            ),
            TextButton(
                onPressed: () {
                  Get.back();
                  // Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back_ios_new,
                  size: 35,
                ))
          ],
        ),
      ),
    );
  }
}
