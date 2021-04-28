library translations;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:search_country/model/serializers.dart';

part 'translations.g.dart';

abstract class Translations
    implements Built<Translations, TranslationsBuilder> {
  Translations._();

  factory Translations([updates(TranslationsBuilder b)]) = _$Translations;

  @nullable
  @BuiltValueField(wireName: 'de')
  String get de;
  @nullable
  @BuiltValueField(wireName: 'es')
  String get es;
  @nullable
  @BuiltValueField(wireName: 'fr')
  String get fr;
  @nullable
  @BuiltValueField(wireName: 'ja')
  String get ja;
  @nullable
  @BuiltValueField(wireName: 'it')
  String get it;
  @nullable
  @BuiltValueField(wireName: 'br')
  String get br;
  @nullable
  @BuiltValueField(wireName: 'pt')
  String get pt;
  @nullable
  @BuiltValueField(wireName: 'nl')
  String get nl;
  @nullable
  @BuiltValueField(wireName: 'hr')
  String get hr;
  @nullable
  @BuiltValueField(wireName: 'fa')
  String get fa;
  String toJson() {
    return json
        .encode(serializers.serializeWith(Translations.serializer, this));
  }

  static Translations fromJson(String jsonString) {
    return serializers.deserializeWith(
        Translations.serializer, json.decode(jsonString));
  }

  static Serializer<Translations> get serializer => _$translationsSerializer;
}
