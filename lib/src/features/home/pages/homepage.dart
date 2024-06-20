import 'package:assignment/src/features/features.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class Homepage extends HookWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        BackgroundGradient(),
        CustomScrollView(
          slivers: [
            Summary(),
            EstateList(),
          ],
        ),
      ],
    );
  }
}
