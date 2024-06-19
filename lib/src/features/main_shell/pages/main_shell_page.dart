import 'package:assignment/src/config/config.dart';
import 'package:assignment/src/features/features.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MainShell extends HookConsumerWidget {
  const MainShell({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final s = GoRouterState.of(context).matchedLocation;
    print(s);
    // final extras = GoRouterState.of(context).extra;
    // final conventionId = (extras as Map?)?[RouterConstants.conventionId] ?? '';
    // final convention =
    //     ref.watch(conventionDetailsProvider(id: conventionId)).asData?.value;
    // final logoUrl = useMemoized(
    //   () => convention?.logo.firstOrNull?.thumbnailUrl,
    //   [convention],
    // );

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            child,
            const AppNavigationBar(),
          ],
        ),
      ),
    );
  }
}
