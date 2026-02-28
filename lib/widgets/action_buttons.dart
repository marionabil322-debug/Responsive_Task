import 'package:flutter/material.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF1E1B4B),
              minimumSize: const Size(200, 45),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: const Text(
              'Start Translating',
              style: TextStyle(color: Colors.white),
            ),
          ),
          const SizedBox(height: 10),
          OutlinedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.history, size: 18),
            label: const Text('View History'),
            style: OutlinedButton.styleFrom(
              minimumSize: const Size(200, 45),
              side: const BorderSide(color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
