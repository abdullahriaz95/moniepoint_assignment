import 'package:assignment/src/shared/shared.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'profile_provider.g.dart';

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
