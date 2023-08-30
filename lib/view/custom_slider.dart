import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:space_encyclopedia/view/planet_list_view.dart';

import '../controller/routes/navigate_to_detail_screen.dart';

class CustomCarouselSlider extends StatelessWidget {
  const CustomCarouselSlider({
    super.key,
    required bool lights,
    required this.controller,
  }) : _lights = lights;

  final bool _lights;
  final CarouselController controller;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        disableCenter: true,
        enlargeCenterPage: true,
        height: 1000,
        scrollDirection: Axis.horizontal,
        autoPlay: _lights ? true : false,
        autoPlayInterval: const Duration(seconds: 5),
        autoPlayCurve: Curves.easeInCubic,
        enableInfiniteScroll: true,
      ),
      carouselController: controller,
      items: [
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
    );
  }
}

void navigateToDetailScreen(BuildContext context, Widget page) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => page),
  );
}