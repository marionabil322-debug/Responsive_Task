import 'package:flutter/material.dart';
import 'package:responsive/widgets/feature_card.dart';

class FeatureSection extends StatelessWidget {
  final bool isMobile;
  const FeatureSection({super.key, required this.isMobile});

  @override
  Widget build(BuildContext context) {
    final List<Widget> cards = [
      const FeatureCard(
        icon: Icons.camera_alt_outlined,
        title: 'Capture Signs',
        desc: 'Use your camera to capture sign language in real-time.',
      ),
      const FeatureCard(
        icon: Icons.notes_outlined,
        title: 'Text Translation',
        desc: '          Convert signs to readable text instantly.           ',
      ),
      const FeatureCard(
        icon: Icons.volume_up_outlined,
        title: 'Voice Output',
        desc: 'Listen to spoken translations for better communication.',
      ),
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: isMobile
          ? Column(
              children: cards
                  .expand((w) => [w, const SizedBox(height: 15)])
                  .toList(),
            )
          : Row(
              children: cards
                  .map(
                    (w) => Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: w,
                      ),
                    ),
                  )
                  .toList(),
            ),
    );
  }
}
