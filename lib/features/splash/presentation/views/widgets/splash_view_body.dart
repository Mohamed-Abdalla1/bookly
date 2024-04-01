import 'package:booky_app/constants.dart';
import 'package:booky_app/core/utils/app_router.dart';
import 'package:booky_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  late Animation<Offset> slidingLogoAnimation;
  @override
  void initState() {
    super.initState();

    sliding();
    navigateToHome();
  }

  void navigateToHome() {
    Future.delayed(
      const Duration(seconds: kNavigate),
      () {
        GoRouter.of(context).push(AppRouter.kHomeView);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        AnimatedBuilder(
          animation: slidingLogoAnimation,
          builder: (context, _) {
            return SlideTransition(
              position: slidingLogoAnimation,
              child: Image.asset(AssetsData.logo),
            );
          },
        ),
        const SizedBox(
          height: 8,
        ),
        AnimatedBuilder(
          animation: slidingAnimation,
          builder: (context, _) {
            return SlideTransition(
              position: slidingAnimation,
              child: const Text(
                'Read Free Books',
                textAlign: TextAlign.center,
              ),
            );
          },
        ),
      ],
    );
  }

  void sliding() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    slidingAnimation = Tween<Offset>(
      begin: const Offset(0, 4),
      end: Offset.zero,
    ).animate(animationController);
    slidingLogoAnimation = Tween<Offset>(
      begin: const Offset(1, 0),
      end: Offset.zero,
    ).animate(animationController);
    animationController.forward();
  }
}
