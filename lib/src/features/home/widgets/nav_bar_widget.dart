import 'package:eco_vision_app/src/shared/extension/build_context_extension.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../shared/theme/app_colors.dart';
import '../presentation/home_controller.dart';

class NavBarItemWidget extends StatelessWidget {
  final String title;
  final int index;

  const NavBarItemWidget({
    super.key,
    required this.title,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    final selectedIndex = Provider.of<HomeController>(context).selectedIndex;
    final bool isSelected = selectedIndex == index;

    return Expanded(
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
        onTap: () {
          Provider.of<HomeController>(context, listen: false).setIndex(index);
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 12.0,
                  color: isSelected
                      ? context.colorScheme.secondary
                      : AppColors.white,
                  fontWeight: isSelected ? FontWeight.w700 : FontWeight.w400,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
