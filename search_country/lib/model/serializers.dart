library serializers;

import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:search_country/model/country_detail.dart';
import 'package:search_country/model/currencies.dart';
import 'package:search_country/model/languages.dart';
import 'package:search_country/model/translations.dart';
import 'package:built_collection/built_collection.dart';
import 'regional_blocs.dart';

part 'serializers.g.dart';

@SerializersFor(const [CountryDetail,Currencies,Languages,RegionalBlocs,Translations])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
