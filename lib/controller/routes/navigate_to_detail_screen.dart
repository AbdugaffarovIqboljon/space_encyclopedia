import 'package:easy_localization/easy_localization.dart';

import '../../model/animated_model.dart';
import '../../screens/detail_screen.dart';

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
