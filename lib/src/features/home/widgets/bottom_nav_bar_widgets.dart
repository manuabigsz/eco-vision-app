import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../shared/extension/build_context_extension.dart';
import '../../../shared/theme/app_colors.dart';
import 'nav_bar_widget.dart';

class BottomNavBarWidget extends StatelessWidget {
  const BottomNavBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.colorScheme.primary,
        borderRadius: BorderRadius.vertical(top: Radius.circular(30.0)),
        boxShadow: [
          BoxShadow(
            color: AppColors.blackColor26,
            spreadRadius: 5,
            blurRadius: 10,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        child: BottomAppBar(
          color: context.colorScheme.primary,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NavBarItemWidget(
                title: 'inicio'.tr,
                index: 0,
              ),
              NavBarItemWidget(
                title: 'buscar'.tr,
                index: 1,
              ),
              NavBarItemWidget(
                title: 'certificado'.tr,
                index: 2,
              ),
              NavBarItemWidget(
                title: 'area_do_aluno'.tr,
                index: 3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
