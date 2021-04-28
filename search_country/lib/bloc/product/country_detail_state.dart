import 'package:equatable/equatable.dart';
import 'package:search_country/model/country_detail.dart';

abstract class CountryDetailState extends Equatable {
  const CountryDetailState();
}

class CountryDetailLoading extends CountryDetailState {
  @override
  List<Object> get props => [];
}

class CountryDetailLoaded extends CountryDetailState {
  final CountryDetail items;

  const CountryDetailLoaded({this.items});

  @override
  List<Object> get props => [items];
}

class CountryDetailSearchLoading extends CountryDetailState {
  @override
  List<Object> get props => [];
}

class SearchedCountryDetailLoaded extends CountryDetailState {
  final CountryDetail searchedItem;
  const SearchedCountryDetailLoaded({ this.searchedItem});

  @override
  List<Object> get props => [searchedItem];
}

class ExpandGroupLoaded extends CountryDetailState {
  final CountryDetail items;

  const ExpandGroupLoaded({this.items});

  @override
  List<Object> get props => [items];
}

class CountryDetailError extends CountryDetailState {
  @override
  List<Object> get props => [];
}
