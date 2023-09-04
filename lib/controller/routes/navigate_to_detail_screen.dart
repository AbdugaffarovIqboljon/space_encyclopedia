import 'package:easy_localization/easy_localization.dart';

import '../../model/animated_model.dart';
import '../../screens/detail_screen.dart';

final mercuryDetailScreen = DetailScreen(
  model: AnimatedModel(
    image: 'assets/images/img_mercury.png',
    content: "mercury_funny_fact".tr(),
    tag: 'mercury_tag',
  ),
);

final venusDetailScreen = DetailScreen(
  model: AnimatedModel(
    image: 'assets/images/img_venus.png',
    content: "venus_funny_fact".tr(),
    tag: 'venus_tag',
  ),
);

final earthDetailScreen = DetailScreen(
  model: AnimatedModel(
    image: 'assets/images/img_earth.png',
    content: "earth_funny_fact".tr(),
    tag: 'earth_tag',
  ),
);

final marsDetailScreen = DetailScreen(
  model: AnimatedModel(
    image: 'assets/images/img_mars.png',
    content: "mars_funny_fact".tr(),
    tag: 'mars_tag',
  ),
);

final jupiterDetailScreen = DetailScreen(
  model: AnimatedModel(
    image: 'assets/images/img_jupiter.png',
    content: "jupiter_funny_fact".tr(),
    tag: 'jupiter_tag',
  ),
);

final saturnDetailScreen = DetailScreen(
  model: AnimatedModel(
    image: 'assets/images/img_saturn.png',
    content: "saturn_funny_fact".tr(),
    tag: 'saturn_tag',
  ),
);

final uranusDetailScreen = DetailScreen(
  model: AnimatedModel(
    image: 'assets/images/img_uranus.png',
    content: "uranus_funny_fact".tr(),
    tag: 'uranus_tag',
  ),
);

final neptuneDetailScreen = DetailScreen(
  model: AnimatedModel(
    image: 'assets/images/img_neptune.png',
    content: "neptune_funny_fact".tr(),
    tag: 'neptune_tag',
  ),
);
