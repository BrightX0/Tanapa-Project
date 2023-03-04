import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'FormBrowser.dart';
import '../../Variables/AppStrings.dart';
import '../Components/CustomTextView.dart';

class AuthenticationView extends StatelessWidget {
  const AuthenticationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 150),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(AppStrings.imageAssetsLogo),
              const SizedBox(height: 70),
              const CustomTextView(
                labelText: "UserName",
                hintText: "Please Provide Username To Continue",
                prefixIcon: Icons.account_circle_rounded,
              ),
              const SizedBox(height: 15),
              const CustomTextView(
                labelText: "Password",
                hintText: "Enter Password Field To Continue",
                prefixIcon: Icons.password,
              ),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () => Get.to(() => const FormBrowser()),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green[700],
                    minimumSize: const Size(double.infinity, 50)),
                child: Text(
                  "Sign in",
                  style: GoogleFonts.poppins(color: Colors.white, fontSize: 20),
                ),
              ),
              const SizedBox(height: 40),
              Center(
                child: RichText(
                  text: TextSpan(
                      text: "Forget ",
                      style: const TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                      children: [
                        TextSpan(
                          recognizer: TapGestureRecognizer()..onTap = () {},
                          text: "Password ?",
                          style: const TextStyle(
                              color: Colors.green, fontWeight: FontWeight.bold),
                        ),
                      ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
