import 'package:assignment/src/shared/shared.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'real_estate_provider.g.dart';

/// A provider that provides the real estate data.
///
/// Ideally, it would call some HTTP request to fetch the data.
/// But for the sake of demonstration, I am just returning a hardcoded value.
///
@riverpod
class RealEstateProvider extends _$RealEstateProvider {
  @override
  FutureOr<List<RealEstateModel>> build() {
    return const [
      RealEstateModel(
        image: AppImages.one,
        address: 'Saint Petersburg, 1st Avenue, 123',
        name: 'Apartment 1',
        latitude: 37.333097,
        longitude: -122.031697,
        priceInUsd: 250,
      ),
      RealEstateModel(
        image: AppImages.two,
        address: 'Saint Petersburg, 2nd Avenue, 456',
        name: 'Apartment 2',
        latitude: 37.332790,
        longitude: -122.031396,
        priceInUsd: 300,
      ),
      RealEstateModel(
        image: AppImages.three,
        address: 'Saint Petersburg, 3rd Avenue, 789',
        name: 'Apartment 3',
        latitude: 37.332346,
        longitude: -122.029540,
        priceInUsd: 350,
      ),
      RealEstateModel(
        image: AppImages.four,
        address: 'Saint Petersburg, 4th Avenue, 1011',
        name: 'Apartment 4',
        latitude: 37.330675,
        longitude: -122.029372,
        priceInUsd: 400,
      ),
      RealEstateModel(
        image: AppImages.five,
        address: 'Saint Petersburg, 5th Avenue, 1213',
        name: 'Apartment 5',
        latitude: 37.330199,
        longitude: -122.031173,
        priceInUsd: 450,
      ),
      RealEstateModel(
        image: AppImages.six,
        address: 'Saint Petersburg, 6th Avenue, 1415',
        name: 'Apartment 6',
        latitude: 37.329812,
        longitude: -122.030438,
        priceInUsd: 500,
      ),
      RealEstateModel(
        image: AppImages.seven,
        address: 'Saint Petersburg, 7th Avenue, 1617',
        name: 'Apartment 7',
        latitude: 37.330385,
        longitude: -122.029675,
        priceInUsd: 550,
      ),
      RealEstateModel(
        image: AppImages.eight,
        address: 'Saint Petersburg, 8th Avenue, 1819',
        name: 'Apartment 8',
        latitude: 37.329418,
        longitude: -122.030035,
        priceInUsd: 600,
      ),
    ];
  }
}
