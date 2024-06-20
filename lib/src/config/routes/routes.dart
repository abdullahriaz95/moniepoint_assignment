part of 'router.dart';

typedef RouteDefinition = ({
  String path,
  String name,
  String? icon,
  String Function(BuildContext context) localizedNameBuilder
});

@TypedShellRoute<MainAppShellRoute>(
  routes: [
    TypedGoRoute<SearchScreenRoute>(
      path: SearchScreenRoute._path,
      name: SearchScreenRoute._name,
    ),
    TypedGoRoute<ChatsScreenRoute>(
      path: ChatsScreenRoute._path,
      name: ChatsScreenRoute._name,
    ),
    TypedGoRoute<HomeScreenRoute>(
      path: HomeScreenRoute._path,
      name: HomeScreenRoute._name,
    ),
    TypedGoRoute<FavoritesScreenRoute>(
      path: FavoritesScreenRoute._path,
      name: FavoritesScreenRoute._name,
    ),
    TypedGoRoute<ProfileScreenRoute>(
      path: ProfileScreenRoute._path,
      name: ProfileScreenRoute._name,
    ),
  ],
)
@immutable
class MainAppShellRoute extends ShellRouteData {
  static final routeDefinition = [
    SearchScreenRoute.routeDefinition,
    ChatsScreenRoute.routeDefinition,
    HomeScreenRoute.routeDefinition,
    FavoritesScreenRoute.routeDefinition,
    ProfileScreenRoute.routeDefinition,
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
    localizedNameBuilder: (context) => context.localizations.home,
  );

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      const NoTransitionPage(child: Homepage());
}

class SearchScreenRoute extends GoRouteData {
  static const _path = '/search';
  static const _name = 'search';
  static const String _icon = AppIcons.search;

  static final RouteDefinition routeDefinition = (
    path: SearchScreenRoute._path,
    name: SearchScreenRoute._name,
    icon: SearchScreenRoute._icon,
    localizedNameBuilder: (context) => context.localizations.search,
  );

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      const NoTransitionPage(
        child: SearchPage(),
      );
}

class FavoritesScreenRoute extends GoRouteData {
  static const _path = '/favorites';
  static const _name = 'favorites';
  static const String _icon = AppIcons.favorites;

  static final RouteDefinition routeDefinition = (
    path: FavoritesScreenRoute._path,
    name: FavoritesScreenRoute._name,
    icon: FavoritesScreenRoute._icon,
    localizedNameBuilder: (context) => context.localizations.favorites,
  );

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      const NoTransitionPage(
        child: Center(
          child: Text('Favorites page'),
        ),
      );
}

class ChatsScreenRoute extends GoRouteData {
  static const _path = '/chats';
  static const _name = 'chats';
  static const String _icon = AppIcons.chat;

  static final RouteDefinition routeDefinition = (
    path: ChatsScreenRoute._path,
    name: ChatsScreenRoute._name,
    icon: ChatsScreenRoute._icon,
    localizedNameBuilder: (context) => context.localizations.chats,
  );

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      const NoTransitionPage(
        child: Center(
          child: Text('Chats page'),
        ),
      );
}

class ProfileScreenRoute extends GoRouteData {
  static const _path = '/profile';
  static const _name = 'profile';
  static const String _icon = AppIcons.profile;

  static final RouteDefinition routeDefinition = (
    path: ProfileScreenRoute._path,
    name: ProfileScreenRoute._name,
    icon: ProfileScreenRoute._icon,
    localizedNameBuilder: (context) => context.localizations.profile,
  );

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      const NoTransitionPage(
        child: Center(
          child: Text('Profile page'),
        ),
      );
}
