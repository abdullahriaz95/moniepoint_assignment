part of 'router.dart';

@Riverpod(keepAlive: true)
GoRouter appRouter(AppRouterRef ref) {
  return GoRouter(
    initialLocation: HomeScreenRoute._path,
    routes: $appRoutes,
  );
}
