import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:space_encyclopedia/view/planet_list_view.dart';

import '../controller/routes/navigate_to_detail_screen.dart';


class CustomCarouselSlider extends StatelessWidget {
  const CustomCarouselSlider({
    super.key,
    required this.controller,
  });

  final CarouselController controller;

  @override
  Widget build(BuildContext context) {
    final List<Widget> planetWidgets = [
      PlanetListView(
        scaleX: 2,
        scaleY: 2,
        assetImage: const AssetImage('assets/images/mercury_cartoon.png'),
        planetName: 'Mercury'.tr(),
        description: 'mercury_desc'.tr(),
        kilometresFromTheSun: 'mercury_distance_from_sun'.tr(),
        size: 'mercury_size'.tr(),
        temperature: 'mercury_temperature'.tr(),
        additionalInfo: 'mercury_additional_info'.tr(),
        onTap: () {
          navigateToDetailScreen(context, mercuryDetailScreen);
        },
        tag: 'mercury_tag',
      ),
      PlanetListView(
        scaleX: 2,
        scaleY: 2,
        assetImage: const AssetImage('assets/images/venus_cartoon.png'),
        planetName: 'Venus'.tr(),
        description: "venus_desc".tr(),
        kilometresFromTheSun: 'venus_distance_from_sun'.tr(),
        size: 'venus_size'.tr(),
        temperature: 'venus_temperature'.tr(),
        additionalInfo: 'venus_additional_info'.tr(),
        onTap: () {
          navigateToDetailScreen(context, venusDetailScreen);
        },
        tag: 'venus_tag',
      ),
      PlanetListView(
        scaleX: 2,
        scaleY: 2,
        assetImage: const AssetImage('assets/images/earth_cartoon.png'),
        planetName: 'Earth'.tr(),
        description: 'earth_desc'.tr(),
        kilometresFromTheSun: 'earth_distance_from_sun'.tr(),
        size: 'earth_size'.tr(),
        temperature: 'earth_temperature'.tr(),
        additionalInfo: 'earth_additional_info'.tr(),
        onTap: () {
          navigateToDetailScreen(context, earthDetailScreen);
        },
        tag: 'earth_tag',
      ),
      PlanetListView(
        scaleX: 2,
        scaleY: 2,
        assetImage: const AssetImage('assets/images/mars_cartoon.png'),
        planetName: 'Mars'.tr(),
        description: 'mars_desc'.tr(),
        kilometresFromTheSun: 'mars_distance_from_sun'.tr(),
        size: 'mars_size'.tr(),
        temperature: 'mars_temperature'.tr(),
        additionalInfo: 'mars_additional_info'.tr(),
        onTap: () {
          navigateToDetailScreen(context, marsDetailScreen);
        },
        tag: 'mars_tag',
      ),
      PlanetListView(
        scaleX: 2.45,
        scaleY: 2.45,
        assetImage: const AssetImage('assets/images/saturn_cartoon.png'),
        planetName: 'Saturn'.tr(),
        description: 'saturn_desc'.tr(),
        kilometresFromTheSun: 'saturn_distance_from_sun'.tr(),
        size: 'saturn_size'.tr(),
        temperature: 'saturn_temperature'.tr(),
        additionalInfo: 'saturn_additional_info'.tr(),
        onTap: () {
          navigateToDetailScreen(context, saturnDetailScreen);
        },
        tag: 'saturn_tag',
      ),
      PlanetListView(
        scaleX: 2,
        scaleY: 2,
        assetImage: const AssetImage('assets/images/jupiter_cartoon.png'),
        planetName: 'Jupiter'.tr(),
        description: 'jupiter_desc'.tr(),
        kilometresFromTheSun: 'jupiter_distance_from_sun'.tr(),
        size: 'jupiter_size'.tr(),
        temperature: 'jupiter_temperature'.tr(),
        additionalInfo: 'jupiter_additional_info'.tr(),
        onTap: () {
          navigateToDetailScreen(context, jupiterDetailScreen);
        },
        tag: 'jupiter_tag',
      ),
      PlanetListView(
        scaleX: 2.55,
        scaleY: 2.55,
        assetImage: const AssetImage('assets/images/uranus_cartoon.png'),
        planetName: 'Uranus'.tr(),
        description: 'uranus_desc'.tr(),
        kilometresFromTheSun: 'uranus_distance_from_sun'.tr(),
        size: 'uranus_size'.tr(),
        temperature: 'uranus_temperature'.tr(),
        additionalInfo: 'uranus_additional_info'.tr(),
        onTap: () {
          navigateToDetailScreen(context, uranusDetailScreen);
        },
        tag: 'uranus_tag',
      ),
      PlanetListView(
        scaleX: 2,
        scaleY: 2,
        assetImage: const AssetImage('assets/images/neptune_cartoon.png'),
        planetName: 'Neptune'.tr(),
        description: 'neptune_desc'.tr(),
        kilometresFromTheSun: 'neptune_distance_from_sun'.tr(),
        size: 'neptune_size'.tr(),
        temperature: 'neptune_temperature'.tr(),
        additionalInfo: 'neptune_additional_info'.tr(),
        onTap: () {
          navigateToDetailScreen(context, neptuneDetailScreen);
        },
        tag: 'neptune_tag',
      ),
    ];

    return ScreenUtilInit(
      minTextAdapt: true,
      designSize: const Size(430, 932),
      builder: (context, child) {
        return CarouselSlider(
          options: CarouselOptions(
            disableCenter: true,
            enlargeCenterPage: true,
            height: 1000.sp,
            scrollDirection: Axis.horizontal,
            enableInfiniteScroll: true,
            viewportFraction: 0.65,
          ),
          carouselController: controller,
          items: planetWidgets,
        );
      },
    );
  }
}

void navigateToDetailScreen(BuildContext context, Widget page) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => page));
}
