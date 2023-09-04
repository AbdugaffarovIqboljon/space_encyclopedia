import 'package:bubble/bubble.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:space_encyclopedia/model/animated_model.dart';
import 'package:space_encyclopedia/screens/home_screen.dart';

class DetailScreen extends StatefulWidget {
  final AnimatedModel model;

  const DetailScreen({super.key, required this.model});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  CarouselController controller = CarouselController();

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 20),
    );
    _animationController.repeat();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void navigateToHomeScreen() async {
    // Navigator.pop(context);
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const HomeScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.sizeOf(context).height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: navigateToHomeScreen,
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Stack(
        alignment: const Alignment(0, -0.65),
        children: [
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Transform.scale(
              scaleX: 4,
              scaleY: 4,
              child: const Image(
                image: AssetImage('assets/images/img_stars_background.jpg'),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: h * 0.35),
            child: RotationTransition(
              turns: _animationController,
              alignment: Alignment.center,
              child: Transform.scale(
                scaleX: 1.6,
                scaleY: 1.6,
                child: Hero(
                  tag: widget.model.tag,
                  child: Image.asset(
                    widget.model.image,
                    height: 200,
                    filterQuality: FilterQuality.medium,
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: const Alignment(-0.7, 0.0),
            child: Bubble(
              padding: const BubbleEdges.symmetric(
                vertical: 10,
                horizontal: 12,
              ),
              borderWidth: 1,
              borderColor: Colors.black54,
              margin: const BubbleEdges.only(top: 10),
              nip: BubbleNip.rightBottom,
              color: const Color(0xFFFFFFFF).withOpacity(0.35),
              child: Text(
                'funny_facts'.tr(),
                textAlign: TextAlign.start,
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Align(
            alignment: const Alignment(1.7, 0.2),
            child: Lottie.asset(
              'assets/lotties/astronaut.json',
              controller: _animationController,
              width: MediaQuery.sizeOf(context).width * 0.7,
              height: MediaQuery.sizeOf(context).height * 0.7,
              filterQuality: FilterQuality.high,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 160,
              padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.45),
                border: Border.all(color: Colors.black54, width: 2),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Text(
                  widget.model.content,
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
