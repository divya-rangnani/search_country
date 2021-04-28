import 'dart:async';

import 'package:dio/dio.dart';
import 'package:search_country/model/country_detail.dart';
import 'package:search_country/utils/CommonApiClass.dart';

class CountryDetailApiProvider {
  Future<CountryDetail> getSearchedCountry(String countryCode) async {
    Response response = await CommonApiClass.callAPI(
      "https://restcountries.eu/rest/v2/alpha/$countryCode",
      null,
      null,
      0,
    );
    if (response.statusCode == 200 && response.data != null) {
      CountryDetail countryDetailResponse =
          CountryDetail.fromJson(response.data.toString());
      return countryDetailResponse;
    } else {
      throw Exception('Failed to load schedule');
    }
  }
}
