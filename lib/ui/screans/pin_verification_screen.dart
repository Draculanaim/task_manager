import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:task_manager/ui/screans/sign_in_screen.dart';
import 'package:task_manager/ui/widgets/screen_background.dart';

import '../utils/app_colors.dart';

class PinVerificationScreen extends StatefulWidget {
  const PinVerificationScreen({super.key});

  static const String name = '/pinverification';

  @override
  State<PinVerificationScreen> createState() => _PinVerificationScreenState();
}

class _PinVerificationScreenState extends State<PinVerificationScreen> {
  final TextEditingController _pinTEController = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: ScreenBackground(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Form(
              key: _formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 80,
                  ),
                  Text(
                    'PIN Verification',
                    style: textTheme.titleLarge,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'A 6 digit verification pin will send you email address',
                    style: textTheme.bodyMedium,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  _buildPinCodeTextField(),
                  const SizedBox(
                    height: 24,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/setpass');
                    },
                    child: Icon(Icons.arrow_circle_right_outlined),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Center(
                    child: _buildPinVerifySection(),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildPinCodeTextField() {
    return PinCodeTextField(
      appContext: context,
      length: 6,
      obscureText: false,
      animationType: AnimationType.fade,
      backgroundColor: Colors.transparent,
      keyboardType: TextInputType.number,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(5),
        fieldHeight: 50,
        fieldWidth: 50,
        inactiveFillColor: Colors.white,
        activeFillColor: Colors.white,
        errorBorderColor: Colors.red,
        inactiveColor: Colors.white,
        selectedColor: Colors.white
      ),
      animationDuration: Duration(milliseconds: 300),
      enableActiveFill: true,
      controller: _pinTEController,
    );
  }

  Widget _buildPinVerifySection() {
    return RichText(
        text: TextSpan(
      text: "Have account ?  ",
      style: TextStyle(color: Colors.black54, fontWeight: FontWeight.w600),
      children: [
        TextSpan(
          text: 'Sign In',
          style: TextStyle(
            color: AppColors.themeColor,
            fontWeight: FontWeight.bold,
          ),
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              Navigator.pushNamedAndRemoveUntil(
                  context, SignInScreen.name, (value) => false);
            },
        )
      ],
    ));
  }

  @override
  void dispose() {
    _pinTEController.dispose();
    super.dispose();
  }
}
