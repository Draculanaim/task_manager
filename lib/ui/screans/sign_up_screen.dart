import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_manager/ui/widgets/screen_background.dart';

import '../utils/app_colors.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  static const String name = '/signup';

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  final TextEditingController _emailTEController = TextEditingController();
  final TextEditingController _firstTEController = TextEditingController();
  final TextEditingController _lastTEController = TextEditingController();
  final TextEditingController _mobileTEController = TextEditingController();
  final TextEditingController _passTEController = TextEditingController();
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
                    'Join with us',
                    style: textTheme.titleLarge,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  TextFormField(
                    controller: _emailTEController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'Email',
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                      ),
                      //labelText: 'Email',
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: _firstTEController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: 'First Name',
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                      ),
                      //labelText: 'Password',
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: _lastTEController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: 'Last Name',
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                      ),
                      //labelText: 'Password',
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: _mobileTEController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: 'Mobile',
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                      ),
                      //labelText: 'Password',
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: _passTEController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                      ),
                      //labelText: 'Password',
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Icon(Icons.arrow_circle_right_outlined),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Center(
                    child: _buildSignInSection(),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSignInSection() {
    return RichText(
        text: TextSpan(
          text: "Have account ?  ",
          style: TextStyle(
              color: Colors.black54, fontWeight: FontWeight.w600),
          children: [
            TextSpan(
              text: 'Sign In',
              style: TextStyle(
                color: AppColors.themeColor,
                fontWeight: FontWeight.bold,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  Navigator.pushNamed(context, '/signin');
                },
            )
          ],
        ));
  }
  @override
  void dispose() {
    _emailTEController.dispose();
    _firstTEController.dispose();
    _lastTEController.dispose();
    _mobileTEController.dispose();
    _passTEController.dispose();


    super.dispose();
  }
}
