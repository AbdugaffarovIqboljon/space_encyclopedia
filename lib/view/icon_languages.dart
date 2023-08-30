import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class IconLanguages extends StatelessWidget {
  const IconLanguages({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const Alignment(1, -1),
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
    );
  }
}