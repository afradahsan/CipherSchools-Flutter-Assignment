import 'package:cipher_schools_expense_tracker/firebase_options.dart';
import 'package:cipher_schools_expense_tracker/utils/colors.dart';
import 'package:cipher_schools_expense_tracker/view_models/auth_viewmodel.dart';
import 'package:cipher_schools_expense_tracker/views/auth/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AuthViewModel(),
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: bgViolet,
          useMaterial3: true,
        ),
        home: SplashScreen()
      ),
    );
  }
}