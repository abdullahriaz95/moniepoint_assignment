import 'package:assignment/src/config/config.dart';
import 'package:assignment/src/features/features.dart';
import 'package:assignment/src/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class BottomControls extends HookWidget {
  const BottomControls({
    required this.markerViewSelected,
    super.key,
  });

  final Function(OptionsMenu) markerViewSelected;

  @override
  Widget build(BuildContext context) {
    final selectedMarkerView = useState(OptionsMenu.price);

    selectedMarkerView.addListener(() {
      markerViewSelected(selectedMarkerView.value);
    });

    return Positioned(
      left: 0,
      right: 0,
      bottom: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(
            children: [
              PopupMenuButton<OptionsMenu>(
                constraints: const BoxConstraints.tightFor(width: 200),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                offset: const Offset(0, -150),
                popUpAnimationStyle: AnimationStyle(
                  curve: Easing.emphasizedDecelerate,
                  duration: 1.5.seconds,
                  reverseDuration: 1.5.seconds,
                ),
                icon: MapButton(
                  iconPath: AppIcons.layers,
                  onTap: () {},
                ),
                onSelected: (OptionsMenu item) {},
                itemBuilder: (BuildContext context) =>
                    <PopupMenuEntry<OptionsMenu>>[
                  PopupMenuItem<OptionsMenu>(
                    value: OptionsMenu.cosyAreas,
                    child: _OptionTile(
                      title: context.localizations.cosyAreas,
                      selected:
                          selectedMarkerView.value == OptionsMenu.cosyAreas,
                      icon: Icons.shield,
                      onTap: () {
                        selectedMarkerView.value = OptionsMenu.cosyAreas;
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  PopupMenuItem<OptionsMenu>(
                    value: OptionsMenu.price,
                    child: _OptionTile(
                      title: context.localizations.price,
                      selected: selectedMarkerView.value == OptionsMenu.price,
                      icon: Icons.price_change_rounded,
                      onTap: () {
                        selectedMarkerView.value = OptionsMenu.price;
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  PopupMenuItem<OptionsMenu>(
                    height: 10,
                    value: OptionsMenu.infrastructure,
                    child: _OptionTile(
                      title: context.localizations.infrastucture,
                      selected: selectedMarkerView.value ==
                          OptionsMenu.infrastructure,
                      icon: Icons.bungalow,
                      onTap: () {
                        selectedMarkerView.value = OptionsMenu.infrastructure;
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  PopupMenuItem<OptionsMenu>(
                    value: OptionsMenu.withoutAnyLayer,
                    child: _OptionTile(
                      title: context.localizations.withoutAnyLayer,
                      selected: selectedMarkerView.value ==
                          OptionsMenu.withoutAnyLayer,
                      icon: Icons.layers,
                      onTap: () {
                        selectedMarkerView.value = OptionsMenu.withoutAnyLayer;
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              ).animate(delay: 2.seconds).scaleXY(
                    duration: 500.milliseconds,
                    curve: Curves.easeInOut,
                  ),
              const SizedBox(height: 10),
              MapButton(
                iconPath: AppIcons.navigation,
                onTap: () {},
              ).animate(delay: 2.seconds).scaleXY(
                    duration: 500.milliseconds,
                    curve: Curves.easeInOut,
                  ),
            ],
          ),
          const SizedBox(width: 16),
          MapButton(
                  iconPath: AppIcons.list,
                  title: context.localizations.listOfVarients,
                  onTap: () {})
              .animate(delay: 2.seconds)
              .scaleXY(
                duration: 500.milliseconds,
                curve: Curves.easeInOut,
              ),
        ],
      ),
    );
  }
}

class _OptionTile extends StatelessWidget {
  const _OptionTile({
    required this.title,
    required this.selected,
    required this.icon,
    required this.onTap,
  });

  final String title;
  final bool selected;
  final IconData icon;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      contentPadding: EdgeInsets.zero,
      dense: true,
      leading: Icon(icon, color: selected ? AppDesignColors.yellow : null),
      title: Text(
        title,
        style: TextStyle(color: selected ? AppDesignColors.yellow : null),
      ),
    );
  }
}
