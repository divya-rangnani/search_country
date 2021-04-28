import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:search_country/bloc/resources/repository.dart';
import 'package:search_country/model/country_detail.dart';

import 'country_detail_event.dart';
import 'country_detail_state.dart';

class CountryDetailBloc extends Bloc<CountryDetailEvent, CountryDetailState> {
  final _repository = Repository();

  CountryDetailBloc(CountryDetailState initialState) : super(initialState);

  bool enableSearch = false;
  CountryDetail responseModel;

  @override
  Stream<CountryDetailState> mapEventToState(
    CountryDetailEvent event,
  ) async* {
    if (event is LoadSearchCountryDetail) {
      yield* _mapLoadSearchCountryDetailToState(event);
    }
  }

  Stream<CountryDetailState> _mapLoadSearchCountryDetailToState(
      LoadSearchCountryDetail event) async* {
    yield CountryDetailLoading();
    try {
      CountryDetail countryDetail = await _repository.fetchFeaturedData(event.strSearch);
      yield SearchedCountryDetailLoaded(searchedItem: countryDetail);
    } catch (_) {
      print('error in LoadSearchCountryDetail method ==> $_');
      yield CountryDetailError();
    }
  }

}
