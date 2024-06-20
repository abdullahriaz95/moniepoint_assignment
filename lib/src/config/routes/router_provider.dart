part of 'router.dart';

/// The [appRouter] is the main router that contains the app's routes.
///
@Riverpod(keepAlive: true)
GoRouter appRouter(AppRouterRef ref) {
  return GoRouter(
    initialLocation: HomeScreenRoute._path,
    routes: $appRoutes,
  );
}
