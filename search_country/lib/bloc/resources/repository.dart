import 'package:search_country/bloc/resources/country_detail_api_provider.dart';
import 'package:search_country/model/country_detail.dart';


class Repository {
  //product listing
  final productsApiProvider = CountryDetailApiProvider();

  Future<CountryDetail> fetchFeaturedData(String countryCode) =>
      productsApiProvider.getSearchedCountry(countryCode);
}
