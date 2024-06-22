import 'package:cipher_schools_expense_tracker/firebase_options.dart';
import 'package:cipher_schools_expense_tracker/models/transaction_model.dart';
import 'package:cipher_schools_expense_tracker/utils/colors.dart';
import 'package:cipher_schools_expense_tracker/view_models/auth_viewmodel.dart';
import 'package:cipher_schools_expense_tracker/view_models/transaction_viewmodels.dart';
import 'package:cipher_schools_expense_tracker/views/auth/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  final appDocumentDirectory = await getApplicationCacheDirectory();
  Hive.init(appDocumentDirectory.path);
  Hive.registerAdapter(TransactionModelAdapter());
  await Hive.openBox<TransactionModel>('transactions');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AuthViewModel()),
        ChangeNotifierProvider(create: (context) => TransactionViewModel()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: bgViolet,
          useMaterial3: true,
        ),
        home: SplashScreen(),
      ),
    );
  }
}