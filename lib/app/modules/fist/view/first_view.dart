import 'dart:developer';

import 'package:counter_app/app/modules/fist/controller/first_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/colors/app_colors.dart';
import '../../../constants/text_style/app_text_style.dart';
import '../../second/view/second_view.dart';

class FirstView extends StatelessWidget {
  FirstView({super.key});

  final _firstController = Get.put<FirstController>(FirstController());

  @override
  Widget build(BuildContext context) {
    log("Ekran>>>>>${_firstController.BuildCount.value++}");
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.white,
        title: Center(
          child: Text('Counter App', style: AppTextStyles.black),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: AppColors.grey),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 150, vertical: 15),
              child: Obx(
                () => Text('San:${_firstController.san.value}',
                    style: AppTextStyles.size30),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  _firstController.kemit();
                  log(">>>>>>${_firstController.san.value}");
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: AppColors.blue),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 0),
                    child: Text('-', style: AppTextStyles.white60),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => _firstController.kosh(),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: AppColors.blue),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 35, vertical: 0),
                    child: Text('+', style: AppTextStyles.white60),
                  ),
                ),
              ),
            ],
          ),
          TextButton(
            onPressed: () {
              Get.to(SecondView());
              // Navigator.push(
              //   // context,
              //   // MaterialPageRoute(builder: (context) => SecondView()),
              // );
            },
            child: Icon(
              Icons.skip_next,
              size: 55,
            ),
          ),
        ],
      ),
    );
  }
}
