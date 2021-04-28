import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

abstract class CountryDetailEvent extends Equatable {
  const CountryDetailEvent();
}

class LoadCountryDetail extends CountryDetailEvent {
  const LoadCountryDetail();
  @override
  List<Object> get props => [];
}

class LoadSearchCountryDetail extends CountryDetailEvent {
  final BuildContext context;
  final String strSearch;
  const LoadSearchCountryDetail(this.context, this.strSearch);
  @override
  List<Object> get props => [context, strSearch];
}

class LoadExpandGroup extends CountryDetailEvent {
  final int index;

  const LoadExpandGroup({this.index});

  @override
  List<Object> get props => [index];
}
