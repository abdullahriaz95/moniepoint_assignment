import 'package:assignment/src/shared/shared.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(context.localizations.home),
      ),
    );
  }
}