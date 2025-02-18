import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../shared/providers/keyboard_provider.dart';
import '../../../shared/providers/user_provider.dart';
import '../widgets/bottom_nav_bar_widgets.dart';
import '../widgets/custom_app_bar.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    init();
  }

  init() async {
    final userprovider = Provider.of<UserProvider>(context, listen: false);
    //await userprovider.initializeUser(context: context);
  }

  @override
  Widget build(BuildContext context) {
    final selectedIndex = Provider.of<HomeController>(context).selectedIndex;
    final isKeyboardVisible =
        Provider.of<KeyboardVisibilityProvider>(context).isKeyboardVisible;

    return Scaffold(
      extendBody: true,
      body: Provider.of<HomeController>(context).pages[selectedIndex],
      appBar: const AppBarWidget(),
      bottomNavigationBar:
          isKeyboardVisible ? null : const BottomNavBarWidget(),
      extendBodyBehindAppBar: true,
    );
  }
}
