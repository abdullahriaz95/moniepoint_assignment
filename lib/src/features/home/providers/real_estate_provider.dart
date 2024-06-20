import 'package:assignment/src/shared/shared.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'real_estate_provider.g.dart';

@riverpod
class RealEstateProvider extends _$RealEstateProvider {
  @override
  FutureOr<List<RealEstateModel>> build() {
    return const [
      RealEstateModel(
        image: AppImages.one,
        address: 'Saint Petersburg, 1st Avenue, 123',
        name: 'Apartment 1',
      ),
      RealEstateModel(
        image: AppImages.two,
        address: 'Saint Petersburg, 2nd Avenue, 456',
        name: 'Apartment 2',
      ),
      RealEstateModel(
        image: AppImages.three,
        address: 'Saint Petersburg, 3rd Avenue, 789',
        name: 'Apartment 3',
      ),
      RealEstateModel(
        image: AppImages.four,
        address: 'Saint Petersburg, 4th Avenue, 1011',
        name: 'Apartment 4',
      ),
      RealEstateModel(
        image: AppImages.five,
        address: 'Saint Petersburg, 5th Avenue, 1213',
        name: 'Apartment 5',
      ),
      RealEstateModel(
        image: AppImages.six,
        address: 'Saint Petersburg, 6th Avenue, 1415',
        name: 'Apartment 6',
      ),
      RealEstateModel(
        image: AppImages.seven,
        address: 'Saint Petersburg, 7th Avenue, 1617',
        name: 'Apartment 7',
      ),
      RealEstateModel(
        image: AppImages.eight,
        address: 'Saint Petersburg, 8th Avenue, 1819',
        name: 'Apartment 8',
      ),
    ];
  }
}
