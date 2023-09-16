import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:space_encyclopedia/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void navigateToHomeScreen() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => const HomeScreen(),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      designSize: const Size(430, 932),
      builder: (context, child) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: Stack(
            children: [
              Center(
                heightFactor: 1.5.sp,
                child: Lottie.asset('assets/lotties/austronat_in_space.json'),
              ),
              Align(
                alignment: const Alignment(0, 0.5),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12.0,
                    vertical: 5.0,
                  ),
                  child: Text(
                    "Explore the Solar System\nTogether!",
                    textAlign: TextAlign.center,
                    textScaleFactor: 1.3.sp,
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 20.sp,
                      height: 1.45.sp,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: const Alignment(0, 0.75),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(350.sp, 50.sp),
                    elevation: 10,
                  ),
                  onPressed: navigateToHomeScreen,
                  child: const Text("Enter"),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
