part of 'router.dart';

extension RouterEx on GoRouterState {
  bool tabMatchesLocation(String tabLocation) {
    final isMatched =
        tabLocation.split('/').last == matchedLocation.split('/').last;
    return isMatched;
  }
}
