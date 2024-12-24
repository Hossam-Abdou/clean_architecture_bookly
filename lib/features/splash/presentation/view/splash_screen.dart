import 'package:bookly_app_clean/core/utils/app_constants.dart';
import 'package:bookly_app_clean/features/home/presentation/view/home_view.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> animation;

  @override
  void initState() {
    super.initState();
    initStateMethod();
    navigateToHome();
  }


    void dispose() {
    animationController.dispose();
    super.dispose();
}
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(AppImages.logo),
          const SizedBox(
            height: 5,
          ),
          AnimatedBuilder(
            animation: animation,
            builder: (context, _) => SlideTransition(
              position: animation,
              child: Text(
                'hello here',
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void initStateMethod() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    );
    animationController.forward();

    animation = Tween<Offset>(
      begin: const Offset(0, 2),
      end: Offset.zero,
    ).animate(animationController);
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => HomeView(),));
    });
  }
}
