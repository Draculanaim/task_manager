import 'package:flutter/material.dart';
import 'package:task_manager/ui/screans/forgot_password_screen.dart';
import 'package:task_manager/ui/screans/main_bottom_nav_screen.dart';
import 'package:task_manager/ui/screans/pin_verification_screen.dart';
import 'package:task_manager/ui/screans/set_password_screen.dart';
import 'package:task_manager/ui/screans/sign_in_screen.dart';
import 'package:task_manager/ui/screans/sign_up_screen.dart';
import 'package:task_manager/ui/screans/splash_screan.dart';
import 'package:task_manager/ui/screans/update_profile_screen.dart';
import 'package:task_manager/ui/utils/app_colors.dart';

class TaskManagerApp extends StatelessWidget {
  const TaskManagerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: AppColors.themeColor,
        textTheme: TextTheme(
          titleLarge: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28,
          ),
          bodyMedium: TextStyle(
            fontSize: 19,
            color: Colors.grey,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          fillColor: Colors.white,
          filled: true,
          contentPadding: EdgeInsets.symmetric(horizontal: 16),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            fixedSize: Size.fromWidth(double.maxFinite),
            backgroundColor: AppColors.themeColor,
            foregroundColor: Colors.white,
            textStyle: TextStyle(
              fontSize: 10,
            ),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ),
      initialRoute: '/',
      onGenerateRoute: (RouteSettings settings) {
        late Widget widget;
        if (settings.name == SplashScrean.name) {
          widget = const SplashScrean();
        } else if (settings.name == SignInScreen.name) {
          widget = const SignInScreen();
        } else if (settings.name == SignUpScreen.name) {
          widget = const SignUpScreen();
        }else if (settings.name == ForgotPasswordScreen.name) {
          widget = const ForgotPasswordScreen();
        }else if (settings.name == PinVerificationScreen.name) {
          widget = const PinVerificationScreen();
        }else if (settings.name == SetPasswordScreen.name) {
          widget = const SetPasswordScreen();
        } else if (settings.name == MainBottomNavScreen.name) {
          widget = const MainBottomNavScreen();
        } else if (settings.name == UpdateProfileScreen.name) {
          widget = const UpdateProfileScreen();
        }
        return MaterialPageRoute(builder: (_) => widget);
      },
    );
  }
}
