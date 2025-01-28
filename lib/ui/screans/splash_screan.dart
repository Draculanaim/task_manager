import 'package:flutter/material.dart';
import 'package:task_manager/ui/screans/sign_in_screen.dart';
import 'package:task_manager/ui/widgets/screen_background.dart';
import '../widgets/app_logo.dart';

class SplashScrean extends StatefulWidget {
  const SplashScrean({super.key});

  static const String name ='/';

  @override
  State<SplashScrean> createState() => _SplashScreanState();
}

class _SplashScreanState extends State<SplashScrean> {

  @override
  void initState() {
    super.initState();
    moveToNextScreen();
  }

  Future<void> moveToNextScreen() async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.pushReplacementNamed(context, SignInScreen.name);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        child: Center(
          child: AppLogo(),
        ),
      ),
    );
  }
}
