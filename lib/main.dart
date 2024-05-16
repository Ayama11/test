import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:testptc/core/utils/app_ruoter.dart';
import 'package:testptc/feature/home/presintions/views/home_view.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await Future.delayed(const Duration(seconds: 2));

  FlutterNativeSplash.remove();
  runApp(const TestPtc());
}

class TestPtc extends StatelessWidget {
  const TestPtc({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
      theme: ThemeData.light().copyWith(
        textTheme: GoogleFonts.poppinsTextTheme(ThemeData.light().textTheme),
      ),
    );
  }
}
