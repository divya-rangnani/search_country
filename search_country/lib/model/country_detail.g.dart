// GENERATED CODE - DO NOT MODIFY BY HAND

part of country_detail;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CountryDetail> _$countryDetailSerializer =
    new _$CountryDetailSerializer();

class _$CountryDetailSerializer implements StructuredSerializer<CountryDetail> {
  @override
  final Iterable<Type> types = const [CountryDetail, _$CountryDetail];
  @override
  final String wireName = 'CountryDetail';

  @override
  Iterable<Object> serialize(Serializers serializers, CountryDetail object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.topLevelDomain;
    if (value != null) {
      result
        ..add('topLevelDomain')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.alpha2Code;
    if (value != null) {
      result
        ..add('alpha2Code')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.alpha3Code;
    if (value != null) {
      result
        ..add('alpha3Code')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.callingCodes;
    if (value != null) {
      result
        ..add('callingCodes')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.capital;
    if (value != null) {
      result
        ..add('capital')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.altSpellings;
    if (value != null) {
      result
        ..add('altSpellings')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.region;
    if (value != null) {
      result
        ..add('region')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.subregion;
    if (value != null) {
      result
        ..add('subregion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.population;
    if (value != null) {
      result
        ..add('population')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.demonym;
    if (value != null) {
      result
        ..add('demonym')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.gini;
    if (value != null) {
      result
        ..add('gini')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.timezones;
    if (value != null) {
      result
        ..add('timezones')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.borders;
    if (value != null) {
      result
        ..add('borders')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.nativeName;
    if (value != null) {
      result
        ..add('nativeName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.numericCode;
    if (value != null) {
      result
        ..add('numericCode')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.currencies;
    if (value != null) {
      result
        ..add('currencies')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Currencies)])));
    }
    value = object.languages;
    if (value != null) {
      result
        ..add('languages')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Languages)])));
    }
    value = object.translations;
    if (value != null) {
      result
        ..add('translations')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(Translations)));
    }
    value = object.flag;
    if (value != null) {
      result
        ..add('flag')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.regionalBlocs;
    if (value != null) {
      result
        ..add('regionalBlocs')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(RegionalBlocs)])));
    }
    value = object.cioc;
    if (value != null) {
      result
        ..add('cioc')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  CountryDetail deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CountryDetailBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'topLevelDomain':
          result.topLevelDomain.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'alpha2Code':
          result.alpha2Code = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'alpha3Code':
          result.alpha3Code = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'callingCodes':
          result.callingCodes.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'capital':
          result.capital = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'altSpellings':
          result.altSpellings.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'region':
          result.region = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'subregion':
          result.subregion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'population':
          result.population = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'demonym':
          result.demonym = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'gini':
          result.gini = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'timezones':
          result.timezones.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'borders':
          result.borders.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'nativeName':
          result.nativeName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'numericCode':
          result.numericCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'currencies':
          result.currencies.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Currencies)]))
              as BuiltList<Object>);
          break;
        case 'languages':
          result.languages.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Languages)]))
              as BuiltList<Object>);
          break;
        case 'translations':
          result.translations.replace(serializers.deserialize(value,
              specifiedType: const FullType(Translations)) as Translations);
          break;
        case 'flag':
          result.flag = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'regionalBlocs':
          result.regionalBlocs.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(RegionalBlocs)]))
              as BuiltList<Object>);
          break;
        case 'cioc':
          result.cioc = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CountryDetail extends CountryDetail {
  @override
  final String name;
  @override
  final BuiltList<String> topLevelDomain;
  @override
  final String alpha2Code;
  @override
  final String alpha3Code;
  @override
  final BuiltList<String> callingCodes;
  @override
  final String capital;
  @override
  final BuiltList<String> altSpellings;
  @override
  final String region;
  @override
  final String subregion;
  @override
  final int population;
  @override
  final String demonym;
  @override
  final double gini;
  @override
  final BuiltList<String> timezones;
  @override
  final BuiltList<String> borders;
  @override
  final String nativeName;
  @override
  final String numericCode;
  @override
  final BuiltList<Currencies> currencies;
  @override
  final BuiltList<Languages> languages;
  @override
  final Translations translations;
  @override
  final String flag;
  @override
  final BuiltList<RegionalBlocs> regionalBlocs;
  @override
  final String cioc;

  factory _$CountryDetail([void Function(CountryDetailBuilder) updates]) =>
      (new CountryDetailBuilder()..update(updates)).build();

  _$CountryDetail._(
      {this.name,
      this.topLevelDomain,
      this.alpha2Code,
      this.alpha3Code,
      this.callingCodes,
      this.capital,
      this.altSpellings,
      this.region,
      this.subregion,
      this.population,
      this.demonym,
      this.gini,
      this.timezones,
      this.borders,
      this.nativeName,
      this.numericCode,
      this.currencies,
      this.languages,
      this.translations,
      this.flag,
      this.regionalBlocs,
      this.cioc})
      : super._();

  @override
  CountryDetail rebuild(void Function(CountryDetailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CountryDetailBuilder toBuilder() => new CountryDetailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CountryDetail &&
        name == other.name &&
        topLevelDomain == other.topLevelDomain &&
        alpha2Code == other.alpha2Code &&
        alpha3Code == other.alpha3Code &&
        callingCodes == other.callingCodes &&
        capital == other.capital &&
        altSpellings == other.altSpellings &&
        region == other.region &&
        subregion == other.subregion &&
        population == other.population &&
        demonym == other.demonym &&
        gini == other.gini &&
        timezones == other.timezones &&
        borders == other.borders &&
        nativeName == other.nativeName &&
        numericCode == other.numericCode &&
        currencies == other.currencies &&
        languages == other.languages &&
        translations == other.translations &&
        flag == other.flag &&
        regionalBlocs == other.regionalBlocs &&
        cioc == other.cioc;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc(0, name.hashCode), topLevelDomain.hashCode), alpha2Code.hashCode),
                                                                                alpha3Code.hashCode),
                                                                            callingCodes.hashCode),
                                                                        capital.hashCode),
                                                                    altSpellings.hashCode),
                                                                region.hashCode),
                                                            subregion.hashCode),
                                                        population.hashCode),
                                                    demonym.hashCode),
                                                gini.hashCode),
                                            timezones.hashCode),
                                        borders.hashCode),
                                    nativeName.hashCode),
                                numericCode.hashCode),
                            currencies.hashCode),
                        languages.hashCode),
                    translations.hashCode),
                flag.hashCode),
            regionalBlocs.hashCode),
        cioc.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CountryDetail')
          ..add('name', name)
          ..add('topLevelDomain', topLevelDomain)
          ..add('alpha2Code', alpha2Code)
          ..add('alpha3Code', alpha3Code)
          ..add('callingCodes', callingCodes)
          ..add('capital', capital)
          ..add('altSpellings', altSpellings)
          ..add('region', region)
          ..add('subregion', subregion)
          ..add('population', population)
          ..add('demonym', demonym)
          ..add('gini', gini)
          ..add('timezones', timezones)
          ..add('borders', borders)
          ..add('nativeName', nativeName)
          ..add('numericCode', numericCode)
          ..add('currencies', currencies)
          ..add('languages', languages)
          ..add('translations', translations)
          ..add('flag', flag)
          ..add('regionalBlocs', regionalBlocs)
          ..add('cioc', cioc))
        .toString();
  }
}

class CountryDetailBuilder
    implements Builder<CountryDetail, CountryDetailBuilder> {
  _$CountryDetail _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  ListBuilder<String> _topLevelDomain;
  ListBuilder<String> get topLevelDomain =>
      _$this._topLevelDomain ??= new ListBuilder<String>();
  set topLevelDomain(ListBuilder<String> topLevelDomain) =>
      _$this._topLevelDomain = topLevelDomain;

  String _alpha2Code;
  String get alpha2Code => _$this._alpha2Code;
  set alpha2Code(String alpha2Code) => _$this._alpha2Code = alpha2Code;

  String _alpha3Code;
  String get alpha3Code => _$this._alpha3Code;
  set alpha3Code(String alpha3Code) => _$this._alpha3Code = alpha3Code;

  ListBuilder<String> _callingCodes;
  ListBuilder<String> get callingCodes =>
      _$this._callingCodes ??= new ListBuilder<String>();
  set callingCodes(ListBuilder<String> callingCodes) =>
      _$this._callingCodes = callingCodes;

  String _capital;
  String get capital => _$this._capital;
  set capital(String capital) => _$this._capital = capital;

  ListBuilder<String> _altSpellings;
  ListBuilder<String> get altSpellings =>
      _$this._altSpellings ??= new ListBuilder<String>();
  set altSpellings(ListBuilder<String> altSpellings) =>
      _$this._altSpellings = altSpellings;

  String _region;
  String get region => _$this._region;
  set region(String region) => _$this._region = region;

  String _subregion;
  String get subregion => _$this._subregion;
  set subregion(String subregion) => _$this._subregion = subregion;

  int _population;
  int get population => _$this._population;
  set population(int population) => _$this._population = population;

  String _demonym;
  String get demonym => _$this._demonym;
  set demonym(String demonym) => _$this._demonym = demonym;

  double _gini;
  double get gini => _$this._gini;
  set gini(double gini) => _$this._gini = gini;

  ListBuilder<String> _timezones;
  ListBuilder<String> get timezones =>
      _$this._timezones ??= new ListBuilder<String>();
  set timezones(ListBuilder<String> timezones) => _$this._timezones = timezones;

  ListBuilder<String> _borders;
  ListBuilder<String> get borders =>
      _$this._borders ??= new ListBuilder<String>();
  set borders(ListBuilder<String> borders) => _$this._borders = borders;

  String _nativeName;
  String get nativeName => _$this._nativeName;
  set nativeName(String nativeName) => _$this._nativeName = nativeName;

  String _numericCode;
  String get numericCode => _$this._numericCode;
  set numericCode(String numericCode) => _$this._numericCode = numericCode;

  ListBuilder<Currencies> _currencies;
  ListBuilder<Currencies> get currencies =>
      _$this._currencies ??= new ListBuilder<Currencies>();
  set currencies(ListBuilder<Currencies> currencies) =>
      _$this._currencies = currencies;

  ListBuilder<Languages> _languages;
  ListBuilder<Languages> get languages =>
      _$this._languages ??= new ListBuilder<Languages>();
  set languages(ListBuilder<Languages> languages) =>
      _$this._languages = languages;

  TranslationsBuilder _translations;
  TranslationsBuilder get translations =>
      _$this._translations ??= new TranslationsBuilder();
  set translations(TranslationsBuilder translations) =>
      _$this._translations = translations;

  String _flag;
  String get flag => _$this._flag;
  set flag(String flag) => _$this._flag = flag;

  ListBuilder<RegionalBlocs> _regionalBlocs;
  ListBuilder<RegionalBlocs> get regionalBlocs =>
      _$this._regionalBlocs ??= new ListBuilder<RegionalBlocs>();
  set regionalBlocs(ListBuilder<RegionalBlocs> regionalBlocs) =>
      _$this._regionalBlocs = regionalBlocs;

  String _cioc;
  String get cioc => _$this._cioc;
  set cioc(String cioc) => _$this._cioc = cioc;

  CountryDetailBuilder();

  CountryDetailBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _topLevelDomain = $v.topLevelDomain?.toBuilder();
      _alpha2Code = $v.alpha2Code;
      _alpha3Code = $v.alpha3Code;
      _callingCodes = $v.callingCodes?.toBuilder();
      _capital = $v.capital;
      _altSpellings = $v.altSpellings?.toBuilder();
      _region = $v.region;
      _subregion = $v.subregion;
      _population = $v.population;
      _demonym = $v.demonym;
      _gini = $v.gini;
      _timezones = $v.timezones?.toBuilder();
      _borders = $v.borders?.toBuilder();
      _nativeName = $v.nativeName;
      _numericCode = $v.numericCode;
      _currencies = $v.currencies?.toBuilder();
      _languages = $v.languages?.toBuilder();
      _translations = $v.translations?.toBuilder();
      _flag = $v.flag;
      _regionalBlocs = $v.regionalBlocs?.toBuilder();
      _cioc = $v.cioc;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CountryDetail other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CountryDetail;
  }

  @override
  void update(void Function(CountryDetailBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CountryDetail build() {
    _$CountryDetail _$result;
    try {
      _$result = _$v ??
          new _$CountryDetail._(
              name: name,
              topLevelDomain: _topLevelDomain?.build(),
              alpha2Code: alpha2Code,
              alpha3Code: alpha3Code,
              callingCodes: _callingCodes?.build(),
              capital: capital,
              altSpellings: _altSpellings?.build(),
              region: region,
              subregion: subregion,
              population: population,
              demonym: demonym,
              gini: gini,
              timezones: _timezones?.build(),
              borders: _borders?.build(),
              nativeName: nativeName,
              numericCode: numericCode,
              currencies: _currencies?.build(),
              languages: _languages?.build(),
              translations: _translations?.build(),
              flag: flag,
              regionalBlocs: _regionalBlocs?.build(),
              cioc: cioc);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'topLevelDomain';
        _topLevelDomain?.build();

        _$failedField = 'callingCodes';
        _callingCodes?.build();

        _$failedField = 'altSpellings';
        _altSpellings?.build();

        _$failedField = 'timezones';
        _timezones?.build();
        _$failedField = 'borders';
        _borders?.build();

        _$failedField = 'currencies';
        _currencies?.build();
        _$failedField = 'languages';
        _languages?.build();
        _$failedField = 'translations';
        _translations?.build();

        _$failedField = 'regionalBlocs';
        _regionalBlocs?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CountryDetail', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
