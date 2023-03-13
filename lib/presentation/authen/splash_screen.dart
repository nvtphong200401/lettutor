import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:lettutor/core/presentation/routing/app_router.dart';
import 'package:lettutor/gen/assets.gen.dart';

class SplashScreen extends HookWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final fadeAnimationController = useAnimationController(duration: const Duration(seconds: 1))
      ..drive(CurveTween(curve: Curves.easeIn));
    useEffect(() {
      fadeAnimationController.forward();

      onStatusChanged(AnimationStatus status) {
        if (status == AnimationStatus.completed) {
          context.router.replace(const LoginRoute());
        }
      }

      fadeAnimationController.addStatusListener(onStatusChanged);
      return () => fadeAnimationController.removeStatusListener(onStatusChanged);
    }, [fadeAnimationController]);
    return Scaffold(
      backgroundColor: Colors.white,
      body: FadeTransition(
        opacity: fadeAnimationController,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 48.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Hero(tag: 'app_logo', child: Assets.images.appLogo.svg()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
