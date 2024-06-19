part of 'router.dart';

@Riverpod(keepAlive: true)
GoRouter appRouter(AppRouterRef ref) {
  return GoRouter(
    initialLocation: MainAppShellRoute.routeDefinition.first.path,
    routes: $appRoutes,
  );
}
