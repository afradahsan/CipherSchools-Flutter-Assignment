import 'package:cipher_schools_expense_tracker/utils/colors.dart';
import 'package:cipher_schools_expense_tracker/utils/constants.dart';
import 'package:cipher_schools_expense_tracker/view_models/auth_viewmodel.dart';
import 'package:cipher_schools_expense_tracker/views/home/widgets/profile_container.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final authViewModel = Provider.of<AuthViewModel>(context);
    final googleUser = authViewModel.user;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(246, 246, 246, 1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      border: Border.all(width: 2, color: bgViolet),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(60),
                        child: googleUser?.photoUrl != null
                            ? Image.network(googleUser!.photoUrl!)
                            : Image.asset(
                                'assets/LinkedIn-Profile-Picture-Example-Tynan-Allan-414x414.jpeg'),
                      ),
                    ),
                  ),
                  sizedwten(context),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Username',
                        style: TextStyle(
                          fontFamily: GoogleFonts.inter().fontFamily,
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      sizedfive(context),
                      Text(
                        googleUser?.displayName ?? 'Guest',
                        style: TextStyle(
                          fontFamily: GoogleFonts.inter().fontFamily,
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              sizedtwenty(context),
              Container(
                height: 405,
                width: screenW(context),
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Column(
                    children: [
                      ProfileContainer(
                        color: bgViolet.withOpacity(0.3),
                        text: 'Account',
                        image: 'assets/user.png',
                      ),
                      Container(
                        width: screenW(context),
                        height: 1,
                        color: Colors.grey.withOpacity(0.2),
                      ),
                      sizedten(context),
                      ProfileContainer(
                        color: bgViolet.withOpacity(0.3),
                        text: 'Settings',
                        image: 'assets/settings.png',
                      ),
                      Container(
                        width: screenW(context),
                        height: 1,
                        color: Colors.grey.withOpacity(0.2),
                      ),
                      sizedten(context),
                      ProfileContainer(
                        color: bgViolet.withOpacity(0.3),
                        text: 'Export Data',
                        image: 'assets/upload.png',
                      ),
                      Container(
                        width: screenW(context),
                        height: 1,
                        color: Colors.grey.withOpacity(0.2),
                      ),
                      sizedten(context),
                      ProfileContainer(
                        color: Colors.red.withOpacity(0.3),
                        text: 'Log Out',
                        image: 'assets/logout.png',
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
