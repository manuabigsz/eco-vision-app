import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../../../shared/extension/build_context_extension.dart';
import '../../../shared/providers/user_provider.dart';
import '../../../shared/theme/app_colors.dart';
import '../presentation/home_controller.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(100.0);

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);

    return DecoratedBox(
      decoration: BoxDecoration(
        color: context.colorScheme.primary,
        gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              context.colorScheme.primaryFixedDim,
              context.colorScheme.primary,
              context.colorScheme.primaryFixedDim,
            ]),
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(30.0),
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.blackColor26,
            spreadRadius: 5,
            blurRadius: 10,
          ),
        ],
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Consumer<HomeController>(
            builder: (_, homeController, __) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () => homeController.setIndex(3),
                    child: CircleAvatar(
                      radius: 30.0,
                      backgroundImage: userProvider.urlAvatarRealtime != ''
                          ? NetworkImage(userProvider.urlAvatarRealtime)
                          : const AssetImage('') as ImageProvider,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'bem_vindo'.tr,
                          style: TextStyle(
                            color: context.colorScheme.surface,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          userProvider.userName ?? 'nome_do_usuario'.tr,
                          style: TextStyle(
                            color: context.colorScheme.surface,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        InkWell(
                          onTap: () => homeController.setIndex(3),
                          child: Text(
                            'editar_perfil'.tr,
                            style: context.textStyles.labelMedium
                                ?.copyWith(color: AppColors.yellow),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
