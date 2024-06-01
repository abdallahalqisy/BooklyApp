import 'package:booklyapp/Features/splash/presentation/views/widgets/sliding_text.dart';
import 'package:booklyapp/core/utils/assets.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animatedController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();
    animatedController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    slidingAnimation = Tween<Offset>(
      begin: const Offset(0, 9),
      end: Offset.zero,
    ).animate(animatedController);
    animatedController.forward();
  }

  @override
  void dispose() {
    super.dispose();
    animatedController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(AssetsData.logo),
          const SizedBox(
            height: 4,
          ),
          SlidingText(slidingAnimation: slidingAnimation),
        ],
      ),
    );
  }
}
