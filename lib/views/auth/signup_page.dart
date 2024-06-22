import 'package:cipher_schools_expense_tracker/utils/colors.dart';
import 'package:cipher_schools_expense_tracker/utils/constants.dart';
import 'package:cipher_schools_expense_tracker/view_models/auth_viewmodel.dart';
import 'package:cipher_schools_expense_tracker/views/auth/widgets/auth_button.dart';
import 'package:cipher_schools_expense_tracker/views/auth/widgets/text_feild.dart';
import 'package:cipher_schools_expense_tracker/views/home/bottom_nav.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController();
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        title: Text(
          'Sign Up',
          style: TextStyle(
              fontFamily: GoogleFonts.inter().fontFamily,
              fontSize: 18,
              fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        backgroundColor: white,
        elevation: 0,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(minHeight: screenH(context)),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Textfeild(
                  textfeildController: nameController,
                  hintText: 'Name',
                ),
                sizedtwenty(context),
                Textfeild(
                  textfeildController: emailController,
                  hintText: 'Email',
                ),
                sizedtwenty(context),
                Textfeild(
                  textfeildController: passwordController,
                  hintText: 'Password',
                  isVisible: true,
                ),
                sizedten(context),
                Row(
                  children: [
                    Checkbox(
                        side: BorderSide(color: bgViolet, width: 2),
                        activeColor: bgViolet,
                        checkColor: white,
                        value: _isChecked,
                        onChanged: (val) {
                          setState(() {
                            _isChecked = val!;
                          });
                        }),
                    RichText(
                        text: TextSpan(
                            text: 'By signing up, you agree to the ',
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: GoogleFonts.inter().fontFamily,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                            children: [
                          TextSpan(
                            text: 'Terms\nof Service and Privacy Policy',
                            style: TextStyle(
                                color: bgViolet,
                                fontFamily: GoogleFonts.inter().fontFamily,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          )
                        ])),
                  ],
                ),
                sizedten(context),
                AuthButton(buttonText: 'Sign Up',),
                sizedten(context),
                Text(
                  'Or',
                  style: TextStyle(
                      color: Colors.grey[400],
                      fontFamily: GoogleFonts.inter().fontFamily,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
                sizedten(context),
                ElevatedButton(
                  onPressed: () {
                    final provider = Provider.of<AuthViewModel>(context, listen: false);
                    provider.googleLogin(context);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/flat-color-icons_google.png',
                        height: 25,
                      ),
                      sizedwten(context),
                      Text(
                        'Sign Up with Google',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: GoogleFonts.inter().fontFamily,
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  style: ButtonStyle(
                      elevation: WidgetStatePropertyAll(0),
                      side: WidgetStatePropertyAll(
                          BorderSide(color: Colors.grey[400]!)),
                      shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                      minimumSize:
                          WidgetStatePropertyAll(Size(screenW(context), 50)),
                      backgroundColor: WidgetStatePropertyAll(white)),
                ),
                sizedten(context),
                RichText(
                    text: TextSpan(
                        text: 'Already have an account? ',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: GoogleFonts.inter().fontFamily,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                        children: [
                      TextSpan(
                          text: 'Login',
                          style: TextStyle(
                              color: bgViolet,
                              decoration: TextDecoration.underline,
                              fontFamily: GoogleFonts.inter().fontFamily,
                              fontSize: 14,
                              fontWeight: FontWeight.w500))
                    ]))
              ],
            ),
          ),
        ),
      )),
    );
  }
}
