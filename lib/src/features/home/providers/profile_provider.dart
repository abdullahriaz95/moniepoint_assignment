import 'package:assignment/src/shared/shared.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'profile_provider.g.dart';

/// A provider that provides the user's profile.
///
/// Ideally, it would call some HTTP request to fetch the user's profile.
/// But for the sake of demonstration, I am just returning a hardcoded value.
///
@riverpod
class ProfileProvider extends _$ProfileProvider {
  @override
  FutureOr<ProfileModel> build() {
    return const ProfileModel(
      image: AppIcons.profile,
      name: 'Marina',
    );
  }
}
