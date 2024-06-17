import 'package:animated_movies_app/constants/ui_constant.dart';
import 'package:animated_movies_app/screens/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

GlobalKey<FormState> formKey4 = GlobalKey();
TextEditingController txtEmailV = TextEditingController();
TextEditingController txtPassword = TextEditingController();
bool _passwordVisible = false;

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return landscape();
  }

  Widget landscape() {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      // backgroundColor: Color.fromRGBO(72, 19, 103, 1.0),
      body: Container(
        height: Get.height,
        decoration: UiConstants.backgroundGradient,
        child: Form(
          key: formKey4,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ImageTop(height, width)
                    .animate()
                    .fadeIn(duration: 1500.ms)
                    .slideY(duration: 750.ms, curve: Curves.decelerate),
                myContainer(
                  children: [
                    Login_text()
                        .animate()
                        .scale(duration: 300.ms, delay: 600.ms, curve: Curves.decelerate)
                        .fadeIn(duration: 700.ms, delay: 600.ms),
                    email_field().animate()
                        .scale(duration: 300.ms, delay: 750.ms, curve: Curves.decelerate)
                        .fadeIn(duration: 700.ms, delay: 750.ms),
                    password_field().animate()
                        .scale(duration: 300.ms, delay: 900.ms, curve: Curves.decelerate)
                        .fadeIn(duration: 700.ms, delay: 900.ms),
                    forgot_password().animate()
                        .scale(duration: 300.ms, delay: 1050.ms, curve: Curves.decelerate)
                        .fadeIn(duration: 700.ms, delay: 1050.ms),
                    login_button().animate()
                        .scale(duration: 300.ms, delay: 1200.ms, curve: Curves.decelerate)
                        .fadeIn(duration: 700.ms, delay: 1200.ms),
                    or_text().animate()
                        .scale(duration: 300.ms, delay: 1350.ms, curve: Curves.decelerate)
                        .fadeIn(duration: 700.ms, delay: 1350.ms),
                    sign_in_with_google().animate()
                        .scale(duration: 300.ms, delay: 1500.ms, curve: Curves.decelerate)
                        .fadeIn(duration: 700.ms, delay: 1500.ms),
                    sign_up().animate()
                        .scale(duration: 300.ms, delay: 1650.ms, curve: Curves.decelerate)
                        .fadeIn(duration: 700.ms, delay: 1650.ms),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget ImageTop(double height, double width) {
    return Stack(
      children: [
        Container(
          height: height * 0.37,
          width: width,
          child: Image.asset('assets/icons/login_image.png', fit: BoxFit.cover,),
        ),
        Container(
          height: height * 0.37,
          width: width,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.transparent,
                // Colors.transparent,
                Color.fromRGBO(43, 15, 64, 1.0), // Adjust the opacity here
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget myContainer({required List<Widget> children}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: children,
      ),
    );
  }

  Widget Login_text() {
    return const Column(
      children: [
        Text(
          'Login',
          textAlign: TextAlign.left,
          style: TextStyle(
              color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold, fontFamily: 'Merriweather'),
        ),
        SizedBox(
          height: 15,
        )
      ],
    );
  }

  Widget email_field() {
    return TextFormField(
      onChanged: (value) {
      },
      validator: (value) {
        if (value!.isEmpty) {
          return 'field is must be required';
        } else if (!value.contains('@gmail.com')) {
          return 'Enter @gmail.com';
        } else if (value.contains(' ')) {
          return 'Space not allow';
        } else if (value != value.toLowerCase()) {
          return 'enter only lowercase letter';
        } else if (value.length <= 10) {
          return 'Enter email length 10';
        }
        return null;
      },
      controller: txtEmailV,
      style: const TextStyle(color: Colors.white),
      decoration: const InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderSide:
              BorderSide(width: 2, color: Color.fromRGBO(182, 91, 210, 1))),
          enabledBorder: OutlineInputBorder(
              borderSide:
              BorderSide(width: 1, color: Color.fromRGBO(182, 91, 210, 1))),
          errorBorder: OutlineInputBorder(
              borderSide:
              BorderSide(width: 2, color: Color.fromRGBO(212, 63, 58, 1))),
          prefixIcon: Icon(
            Icons.person,
            color: Colors.white60,
          ),
          labelText: 'Email',
          errorStyle: TextStyle(color: Color.fromRGBO(212, 63, 58, 1)),
          labelStyle: TextStyle(color: Colors.white60)),
    );
  }

  Widget password_field() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: TextFormField(
        controller: txtPassword,
        style: const TextStyle(color: Colors.white),
        keyboardType:
        TextInputType.visiblePassword, // Allow alphanumeric characters
        decoration: InputDecoration(
          focusedBorder: const OutlineInputBorder(
              borderSide:
              BorderSide(width: 2, color: Color.fromRGBO(182, 91, 210, 1))),
          enabledBorder: const OutlineInputBorder(
              borderSide:
              BorderSide(width: 1, color: Color.fromRGBO(182, 91, 210, 1))),
          errorBorder: const OutlineInputBorder(
              borderSide:
              BorderSide(width: 2, color: Color.fromRGBO(212, 63, 58, 1))),
          prefixIcon: const Icon(
            Icons.fingerprint_rounded,
            color: Colors.white60,
          ),
          labelText: 'Password',
          labelStyle: const TextStyle(color: Colors.white60),
          suffixIcon: IconButton(
            icon: Icon(
              _passwordVisible
                  ? Icons.visibility_outlined
                  : Icons.visibility_off_outlined,
              color: Colors.white,
            ),
            onPressed: () {
              setState(() {
                _passwordVisible = !_passwordVisible;
              });
            },
          ),
        ),
        obscureText: !_passwordVisible,
      ),
    );
  }

  Widget forgot_password() {
    return Row(
      children: [
        const Expanded(child: SizedBox()),
        GestureDetector(
          onTap: (){

          },
          child: const Text(
            'Forgot password?',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
          ),
        ),
      ],
    );
  }

  Widget login_button() {
    return GestureDetector(
      onTap: () {
        bool res = formKey4.currentState!.validate();
        if (res) {
          Get.off(const GlobalNavBar(), transition: Transition.fade, duration: 300.ms);
        }
      },
      child: Container(
        margin: const EdgeInsets.only(top: 15),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color.fromRGBO(72, 19, 103, 1.0),
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Center(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Text(
              'LOGIN',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontFamily: 'Roboto',
                  fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }

  Widget or_text() {
    return const Center(
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Text(
          'OR',
          style: TextStyle(
            color: Colors.white,
            fontSize: 17,
          ),
        ),
      ),
    );
  }

  Widget sign_in_with_google() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        boxShadow: [
          const BoxShadow(
              color: Color.fromRGBO(76, 67, 130, 1),
              blurRadius: 45,
              spreadRadius: 1,
              blurStyle: BlurStyle.outer),
        ],
        border: Border.all(color: const Color.fromRGBO(182, 91, 210, 1), width: 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Center(
          child: GestureDetector(
            onTap: (){
              // Development.showDialogBox();
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 40,
                  width: 40,
                  child: Image.asset('assets/icons/google.png'),
                ),
                const SizedBox(
                  width: 6,
                ),
                const Text(
                  'Sign-In with Google',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget sign_up() {
    return Column(
      children: [
        const SizedBox(
          height: 15,
        ),
        Row(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 100),
              child: Text(
                'Don`t have an Account?',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                // Development.showDialogBox();
              },
              child: const Text(
                ' SignUp',
                style:
                TextStyle(color: Colors.white54, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 25,
        ),
      ],
    );
  }
}