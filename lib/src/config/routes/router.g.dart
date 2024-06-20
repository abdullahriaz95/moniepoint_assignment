// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $mainAppShellRoute,
    ];

RouteBase get $mainAppShellRoute => ShellRouteData.$route(
      factory: $MainAppShellRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: '/search',
          name: 'search',
          factory: $SearchScreenRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/chats',
          name: 'chats',
          factory: $ChatsScreenRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/home',
          name: 'home',
          factory: $HomeScreenRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/favorites',
          name: 'favorites',
          factory: $FavoritesScreenRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/profile',
          name: 'profile',
          factory: $ProfileScreenRouteExtension._fromState,
        ),
      ],
    );

extension $MainAppShellRouteExtension on MainAppShellRoute {
  static MainAppShellRoute _fromState(GoRouterState state) =>
      MainAppShellRoute();
}

extension $SearchScreenRouteExtension on SearchScreenRoute {
  static SearchScreenRoute _fromState(GoRouterState state) =>
      SearchScreenRoute();

  String get location => GoRouteData.$location(
        '/search',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ChatsScreenRouteExtension on ChatsScreenRoute {
  static ChatsScreenRoute _fromState(GoRouterState state) => ChatsScreenRoute();

  String get location => GoRouteData.$location(
        '/chats',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $HomeScreenRouteExtension on HomeScreenRoute {
  static HomeScreenRoute _fromState(GoRouterState state) => HomeScreenRoute();

  String get location => GoRouteData.$location(
        '/home',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $FavoritesScreenRouteExtension on FavoritesScreenRoute {
  static FavoritesScreenRoute _fromState(GoRouterState state) =>
      FavoritesScreenRoute();

  String get location => GoRouteData.$location(
        '/favorites',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ProfileScreenRouteExtension on ProfileScreenRoute {
  static ProfileScreenRoute _fromState(GoRouterState state) =>
      ProfileScreenRoute();

  String get location => GoRouteData.$location(
        '/profile',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$appRouterHash() => r'af7d006c1b4b2f67f60b3acdfb5e87d50efbce9d';

/// See also [appRouter].
@ProviderFor(appRouter)
final appRouterProvider = Provider<GoRouter>.internal(
  appRouter,
  name: r'appRouterProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$appRouterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AppRouterRef = ProviderRef<GoRouter>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
