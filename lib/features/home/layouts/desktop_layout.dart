import 'package:flutter/material.dart';
import 'package:responsive/widgets/action_buttons.dart';
import 'package:responsive/widgets/feature_section.dart';
import 'package:responsive/widgets/hero_section.dart';
import 'package:responsive/widgets/how_works_section.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 1100),
          padding: const EdgeInsets.symmetric(vertical: 40),
          child: Column(
            children: const [
              HeroSection(),
              FeatureSection(isMobile: false),
              SizedBox(height: 30),
              WorksSection(),
              SizedBox(height: 20),
              ActionButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
