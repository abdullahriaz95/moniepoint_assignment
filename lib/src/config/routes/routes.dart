part of 'router.dart';

typedef RouteDefinition = ({
  String path,
  String name,
  String? icon,
  String? selectedIcon,
  String Function(BuildContext context) localizedNameBuilder
});

@TypedShellRoute<MainAppShellRoute>(
  routes: [
    TypedGoRoute<HomeScreenRoute>(
      path: HomeScreenRoute._path,
      name: HomeScreenRoute._name,
    ),
    TypedGoRoute<SearchScreenRoute>(
      path: SearchScreenRoute._path,
      name: SearchScreenRoute._name,
    ),
  ],
)
@immutable
class MainAppShellRoute extends ShellRouteData {
  static final routeDefinition = [
    HomeScreenRoute.routeDefinition,
    SearchScreenRoute.routeDefinition,
  ];

  @override
  Page<void> pageBuilder(
    BuildContext context,
    GoRouterState state,
    Widget navigator,
  ) =>
      NoTransitionPage(
        child: MainShell(
          child: navigator,
        ),
      );
}

class HomeScreenRoute extends GoRouteData {
  static const _path = '/home';
  static const _name = 'home';
  static const String _icon = AppIcons.home;

  static final RouteDefinition routeDefinition = (
    path: HomeScreenRoute._path,
    name: HomeScreenRoute._name,
    icon: HomeScreenRoute._icon,
    selectedIcon: null,
    localizedNameBuilder: (context) => context.localizations.home,
  );

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      const NoTransitionPage(child: Homepage());
}

class SearchScreenRoute extends GoRouteData {
  static const _path = '/search';
  static const _name = 'search';
  static const String _icon = AppIcons.home;

  static final RouteDefinition routeDefinition = (
    path: SearchScreenRoute._path,
    name: SearchScreenRoute._name,
    icon: SearchScreenRoute._icon,
    selectedIcon: null,
    localizedNameBuilder: (context) => context.localizations.home,
  );

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      const NoTransitionPage(
        child: Center(
          child: Text('Search page'),
        ),
      );
}
