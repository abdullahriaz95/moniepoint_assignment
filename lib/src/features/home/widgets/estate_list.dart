import 'package:assignment/src/config/config.dart';
import 'package:assignment/src/features/features.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EstateList extends HookConsumerWidget {
  const EstateList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final estates = ref.watch(realEstateProviderProvider).value;
    final animationController = useAnimationController(
      duration: 1000.milliseconds,
      keys: ['animation_controller'],
    );

    final callback = useCallback(() async {
      await Future.delayed(2500.milliseconds);

      animationController.forward();
    }, [animationController]);

    useEffect(() {
      callback();
      return null;
    }, ['']);

    return SliverToBoxAdapter(
      child: Container(
              decoration: const BoxDecoration(
                color: AppDesignColors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(24),
                ),
              ),
              padding: const EdgeInsets.all(8),
              child: GridView.custom(
                padding: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverQuiltedGridDelegate(
                  crossAxisCount: 4,
                  mainAxisSpacing: 4,
                  crossAxisSpacing: 4,
                  pattern: const [
                    QuiltedGridTile(2, 4),
                    QuiltedGridTile(4, 2),
                    QuiltedGridTile(2, 2),
                    QuiltedGridTile(2, 2),
                  ],
                ),
                childrenDelegate: SliverChildBuilderDelegate(
                  childCount: estates?.length,
                  (context, index) => EstateTile(
                    estate: estates![index],
                  ),
                ),
              )).animate(delay: 1800.milliseconds).slideY(
            duration: 1000.milliseconds,
            begin: 1.5,
            end: 0,
            curve: Curves.easeInOut,
          ),
    );
  }
}
