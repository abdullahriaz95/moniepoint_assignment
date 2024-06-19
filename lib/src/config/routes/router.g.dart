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
          path: '/home',
          name: 'home',
          factory: $HomeScreenRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/search',
          name: 'search',
          factory: $SearchScreenRouteExtension._fromState,
        ),
      ],
    );

extension $MainAppShellRouteExtension on MainAppShellRoute {
  static MainAppShellRoute _fromState(GoRouterState state) =>
      MainAppShellRoute();
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

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$appRouterHash() => r'70dee0a15e7a607588e575314995c4e2751b82c3';

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
