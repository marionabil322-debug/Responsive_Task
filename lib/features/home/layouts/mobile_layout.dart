import 'package:flutter/material.dart';
import 'package:responsive/widgets/action_buttons.dart';
import 'package:responsive/widgets/feature_section.dart';
import 'package:responsive/widgets/hero_section.dart';
import 'package:responsive/widgets/how_works_section.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: const [
          HeroSection(),
          FeatureSection(isMobile: true),
          WorksSection(),
          ActionButtons(),
        ],
      ),
    );
  }
}
