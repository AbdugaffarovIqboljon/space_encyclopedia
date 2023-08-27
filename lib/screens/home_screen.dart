import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:space_encyclopedia/model/animated_model.dart';
import 'package:space_encyclopedia/screens/detail_screen.dart';

import '../view/planet_list_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controller = CarouselSliderController();
  bool _lights = false;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  final mercuryDetailScreen = DetailScreen(
    model: AnimatedModel(
      image: 'assets/images/img_mercury.png',
      content: "mercury_funny_fact".tr(),
    ),
  );

  final venusDetailScreen = DetailScreen(
    model: AnimatedModel(
      image: 'assets/images/img_venus.png',
      content: "venus_funny_fact".tr(),
    ),
  );

  final earthDetailScreen = DetailScreen(
    model: AnimatedModel(
      image: 'assets/images/img_earth.png',
      content: "earth_funny_fact".tr(),
    ),
  );

  final marsDetailScreen = DetailScreen(
    model: AnimatedModel(
      image: 'assets/images/img_mars.png',
      content: "mars_funny_fact".tr(),
    ),
  );

  final jupiterDetailScreen = DetailScreen(
    model: AnimatedModel(
      image: 'assets/images/img_jupiter.png',
      content: "jupiter_funny_fact".tr(),
    ),
  );

  final saturnDetailScreen = DetailScreen(
    model: AnimatedModel(
      image: 'assets/images/img_saturn.png',
      content: "saturn_funny_fact".tr(),
    ),
  );

  final uranusDetailScreen = DetailScreen(
    model: AnimatedModel(
      image: 'assets/images/img_uranus.png',
      content: "uranus_funny_fact".tr(),
    ),
  );

  final neptuneDetailScreen = DetailScreen(
    model: AnimatedModel(
      image: 'assets/images/img_neptune.png',
      content: "neptune_funny_fact".tr(),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
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
            CarouselSlider(
              autoSliderTransitionTime: const Duration(milliseconds: 600),
              enableAutoSlider: _lights ? true : false,
              unlimitedMode: true,
              controller: controller,
              slideTransform:
                  const BackgroundToForegroundTransform(startScale: 2),
              scrollDirection: Axis.horizontal,
              children: [
                PlanetListView(
                  scaleX: 2.25,
                  scaleY: 2.25,
                  assetImage: const AssetImage('assets/images/img_mercury.png'),
                  planetName: 'Mercury'.tr(),
                  description: 'mercury_desc'.tr(),
                  kilometresFromTheSun: 'mercury_distance_from_sun'.tr(),
                  size: 'mercury_size'.tr(),
                  temperature: 'mercury_temperature'.tr(),
                  additionalInfo: 'mercury_additional_info'.tr(),
                  onTap: () {
                    navigateToDetailScreen(context, mercuryDetailScreen);
                  },
                ),
                PlanetListView(
                  scaleX: 1.75,
                  scaleY: 1.75,
                  assetImage: const AssetImage('assets/images/img_venus.png'),
                  planetName: 'Venus'.tr(),
                  description: "venus_desc".tr(),
                  kilometresFromTheSun: 'venus_distance_from_sun'.tr(),
                  size: 'venus_size'.tr(),
                  temperature: 'venus_temperature'.tr(),
                  additionalInfo: 'venus_additional_info'.tr(),
                  onTap: () {
                    navigateToDetailScreen(context, venusDetailScreen);
                  },
                ),
                PlanetListView(
                  scaleX: 2.25,
                  scaleY: 2.25,
                  assetImage: const AssetImage('assets/images/img_earth.png'),
                  planetName: 'Earth'.tr(),
                  description: 'earth_desc'.tr(),
                  kilometresFromTheSun: 'earth_distance_from_sun'.tr(),
                  size: 'earth_size'.tr(),
                  temperature: 'earth_temperature'.tr(),
                  additionalInfo: 'earth_additional_info'.tr(),
                  onTap: () {
                    navigateToDetailScreen(context, earthDetailScreen);
                  },
                ),
                PlanetListView(
                  scaleX: 1.2,
                  scaleY: 1.2,
                  assetImage: const AssetImage('assets/images/img_mars.png'),
                  planetName: 'Mars'.tr(),
                  description: 'mars_desc'.tr(),
                  kilometresFromTheSun: 'mars_distance_from_sun'.tr(),
                  size: 'mars_size'.tr(),
                  temperature: 'mars_temperature'.tr(),
                  additionalInfo: 'mars_additional_info'.tr(),
                  onTap: () {
                    navigateToDetailScreen(context, marsDetailScreen);
                  },
                ),
                PlanetListView(
                  scaleX: 1.05,
                  scaleY: 1.05,
                  assetImage: const AssetImage('assets/images/img_jupiter.png'),
                  planetName: 'Jupiter'.tr(),
                  description: 'jupiter_desc'.tr(),
                  kilometresFromTheSun: 'jupiter_distance_from_sun'.tr(),
                  size: 'jupiter_size'.tr(),
                  temperature: 'jupiter_temperature'.tr(),
                  additionalInfo: 'jupiter_additional_info'.tr(),
                  onTap: () {
                    navigateToDetailScreen(context, jupiterDetailScreen);
                  },
                ),
                PlanetListView(
                  scaleX: 2.1,
                  scaleY: 2.1,
                  assetImage: const AssetImage('assets/images/img_saturn.png'),
                  planetName: 'Saturn'.tr(),
                  description: 'saturn_desc'.tr(),
                  kilometresFromTheSun: 'saturn_distance_from_sun'.tr(),
                  size: 'saturn_size'.tr(),
                  temperature: 'saturn_temperature'.tr(),
                  additionalInfo: 'saturn_additional_info'.tr(),
                  onTap: () {
                    navigateToDetailScreen(context, saturnDetailScreen);
                  },
                ),
                PlanetListView(
                  scaleX: 1.75,
                  scaleY: 1.75,
                  assetImage: const AssetImage('assets/images/img_uranus.png'),
                  planetName: 'Uranus'.tr(),
                  description: 'uranus_desc'.tr(),
                  kilometresFromTheSun: 'uranus_distance_from_sun'.tr(),
                  size: 'uranus_size'.tr(),
                  temperature: 'uranus_temperature'.tr(),
                  additionalInfo: 'uranus_additional_info'.tr(),
                  onTap: () {
                    navigateToDetailScreen(context, uranusDetailScreen);
                  },
                ),
                PlanetListView(
                  scaleX: 1.3,
                  scaleY: 1.3,
                  assetImage: const AssetImage('assets/images/img_neptune.png'),
                  planetName: 'Neptune'.tr(),
                  description: 'neptune_desc'.tr(),
                  kilometresFromTheSun: 'neptune_distance_from_sun'.tr(),
                  size: 'neptune_size'.tr(),
                  temperature: 'neptune_temperature'.tr(),
                  additionalInfo: 'neptune_additional_info'.tr(),
                  onTap: () {
                    navigateToDetailScreen(context, neptuneDetailScreen);
                  },
                ),
              ],
            ),

            Align(
              alignment: const Alignment(1, -1.01),
              child: PopupMenuButton<Locale>(
                color: Colors.blue.shade100,
                elevation: 10,
                tooltip: 'languages'.tr(),
                shadowColor: Colors.cyanAccent,
                onSelected: context.setLocale,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                itemBuilder: (context) {
                  return const [
                    PopupMenuItem(
                        value: Locale('uz', 'UZ'), child: Text("🇺🇿 UZ")),
                    PopupMenuItem(
                        value: Locale('en', 'US'), child: Text("🇺🇸 EN")),
                    PopupMenuItem(
                        value: Locale('ru', 'RU'), child: Text("🇷🇺 RU")),
                  ];
                },
                icon: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.1),
                    border: Border.all(color: Colors.red),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.language, color: Colors.white),
                ),
              ),
            ),
            Align(
              alignment: const Alignment(-0.9, -0.85),
              child: Column(
                children: [
                  CupertinoSwitch(
                    value: _lights,
                    onChanged: (bool value) {
                      setState(() {
                        _lights = value;
                      });
                    },
                  ),
                  Text(
                    "auto_slide".tr(),
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void navigateToDetailScreen(BuildContext context, Widget page) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => page),
  );
}
