import 'package:flutter/material.dart';
import 'package:food_delivery/screens/home.dart';
import 'package:food_delivery/widgets/buttons.dart';
import 'package:food_delivery/widgets/footer.dart';
import 'package:food_delivery/widgets/header.dart';
import 'package:food_delivery/widgets/text_fields.dart';
import 'package:food_delivery/widgets/password_filed.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
        leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new_rounded,
                color: Colors.black),
            onPressed: () {
              Navigator.pop(context);
            }),
        elevation: 0,
        backgroundColor: const Color(0xffffffff),
        toolbarHeight: 160,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 24, left: 24),
            child: Container(
              alignment: Alignment.topLeft,
              child: const Header(
                title: "Sign Up",
                fontsize: 24,
                color: Color(0xff000000),
              ),
            ),
          ),
          const Userinput(
            lable: "Enter UserName",
          ),
          const PasswordFiled(
            lable: "Enter Password",
          ),
          const PasswordFiled(
            lable: "Re-enter Password",
          ),
          Button(
            title: "Sign Up",
            color: const Color(0xffffffff),
            backgroundColor: const Color(0xffD35400),
            onpressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const Home();
                },
              ));
            },
          ),
          TextButton(
            onPressed: () {},
            child: Container(
              alignment: Alignment.topRight,
              child: const Padding(
                padding: EdgeInsets.only(right: 24),
                child: Text(
                  "Forgot password?",
                  style: TextStyle(
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color(0xff34495E)),
                ),
              ),
            ),
          ),
          const Footer(),
        ],
      ),
    );
  }
}