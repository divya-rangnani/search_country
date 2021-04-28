library regional_blocs;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:search_country/model/serializers.dart';

part 'regional_blocs.g.dart';

abstract class RegionalBlocs
    implements Built<RegionalBlocs, RegionalBlocsBuilder> {
  RegionalBlocs._();

  factory RegionalBlocs([updates(RegionalBlocsBuilder b)]) = _$RegionalBlocs;

  @nullable
  @BuiltValueField(wireName: 'acronym')
  String get acronym;
  @nullable
  @BuiltValueField(wireName: 'name')
  String get name;
  @nullable
  @BuiltValueField(wireName: 'otherAcronyms')
  BuiltList<String> get otherAcronyms;
  @nullable
  @BuiltValueField(wireName: 'otherNames')
  BuiltList<String> get otherNames;
  String toJson() {
    return json
        .encode(serializers.serializeWith(RegionalBlocs.serializer, this));
  }

  static RegionalBlocs fromJson(String jsonString) {
    return serializers.deserializeWith(
        RegionalBlocs.serializer, json.decode(jsonString));
  }

  static Serializer<RegionalBlocs> get serializer => _$regionalBlocsSerializer;
}
