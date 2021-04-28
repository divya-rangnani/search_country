library country_detail;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'currencies.dart';
import 'languages.dart';
import 'regional_blocs.dart';
import 'serializers.dart';
import 'translations.dart';

part 'country_detail.g.dart';

abstract class CountryDetail
    implements Built<CountryDetail, CountryDetailBuilder> {
  CountryDetail._();

  factory CountryDetail([updates(CountryDetailBuilder b)]) = _$CountryDetail;

  @nullable
  @BuiltValueField(wireName: 'name')
  String get name;
  @nullable
  @BuiltValueField(wireName: 'topLevelDomain')
  BuiltList<String> get topLevelDomain;
  @nullable
  @BuiltValueField(wireName: 'alpha2Code')
  String get alpha2Code;
  @nullable
  @BuiltValueField(wireName: 'alpha3Code')
  String get alpha3Code;
  @nullable
  @BuiltValueField(wireName: 'callingCodes')
  BuiltList<String> get callingCodes;
  @nullable
  @BuiltValueField(wireName: 'capital')
  String get capital;
  @nullable
  @BuiltValueField(wireName: 'altSpellings')
  BuiltList<String> get altSpellings;
  @nullable
  @BuiltValueField(wireName: 'region')
  String get region;
  @nullable
  @BuiltValueField(wireName: 'subregion')
  String get subregion;
  @nullable
  @BuiltValueField(wireName: 'population')
  int get population;
  /*@nullable
  @BuiltValueField(wireName: 'latlng')
  BuiltList<int> get latlng;*/
  @nullable
  @BuiltValueField(wireName: 'demonym')
  String get demonym;
  /*@nullable
  @BuiltValueField(wireName: 'area')
  int get area;*/
  @nullable
  @BuiltValueField(wireName: 'gini')
  double get gini;
  @nullable
  @BuiltValueField(wireName: 'timezones')
  BuiltList<String> get timezones;
  @nullable
  @BuiltValueField(wireName: 'borders')
  BuiltList<String> get borders;
  @nullable
  @BuiltValueField(wireName: 'nativeName')
  String get nativeName;
  @nullable
  @BuiltValueField(wireName: 'numericCode')
  String get numericCode;
  @nullable
  @BuiltValueField(wireName: 'currencies')
  BuiltList<Currencies> get currencies;
  @nullable
  @BuiltValueField(wireName: 'languages')
  BuiltList<Languages> get languages;
  @nullable
  @BuiltValueField(wireName: 'translations')
  Translations get translations;
  @nullable
  @BuiltValueField(wireName: 'flag')
  String get flag;
  @nullable
  @BuiltValueField(wireName: 'regionalBlocs')
  BuiltList<RegionalBlocs> get regionalBlocs;
  @nullable
  @BuiltValueField(wireName: 'cioc')
  String get cioc;
  String toJson() {
    return json
        .encode(serializers.serializeWith(CountryDetail.serializer, this));
  }

  static CountryDetail fromJson(String jsonString) {
    return serializers.deserializeWith(
        CountryDetail.serializer, json.decode(jsonString));
  }

  static Serializer<CountryDetail> get serializer => _$countryDetailSerializer;
}
