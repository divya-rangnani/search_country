// GENERATED CODE - DO NOT MODIFY BY HAND

part of translations;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Translations> _$translationsSerializer =
    new _$TranslationsSerializer();

class _$TranslationsSerializer implements StructuredSerializer<Translations> {
  @override
  final Iterable<Type> types = const [Translations, _$Translations];
  @override
  final String wireName = 'Translations';

  @override
  Iterable<Object> serialize(Serializers serializers, Translations object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.de;
    if (value != null) {
      result
        ..add('de')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.es;
    if (value != null) {
      result
        ..add('es')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fr;
    if (value != null) {
      result
        ..add('fr')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ja;
    if (value != null) {
      result
        ..add('ja')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.it;
    if (value != null) {
      result
        ..add('it')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.br;
    if (value != null) {
      result
        ..add('br')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.pt;
    if (value != null) {
      result
        ..add('pt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nl;
    if (value != null) {
      result
        ..add('nl')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.hr;
    if (value != null) {
      result
        ..add('hr')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fa;
    if (value != null) {
      result
        ..add('fa')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Translations deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TranslationsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'de':
          result.de = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'es':
          result.es = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'fr':
          result.fr = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'ja':
          result.ja = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'it':
          result.it = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'br':
          result.br = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'pt':
          result.pt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'nl':
          result.nl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'hr':
          result.hr = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'fa':
          result.fa = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Translations extends Translations {
  @override
  final String de;
  @override
  final String es;
  @override
  final String fr;
  @override
  final String ja;
  @override
  final String it;
  @override
  final String br;
  @override
  final String pt;
  @override
  final String nl;
  @override
  final String hr;
  @override
  final String fa;

  factory _$Translations([void Function(TranslationsBuilder) updates]) =>
      (new TranslationsBuilder()..update(updates)).build();

  _$Translations._(
      {this.de,
      this.es,
      this.fr,
      this.ja,
      this.it,
      this.br,
      this.pt,
      this.nl,
      this.hr,
      this.fa})
      : super._();

  @override
  Translations rebuild(void Function(TranslationsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TranslationsBuilder toBuilder() => new TranslationsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Translations &&
        de == other.de &&
        es == other.es &&
        fr == other.fr &&
        ja == other.ja &&
        it == other.it &&
        br == other.br &&
        pt == other.pt &&
        nl == other.nl &&
        hr == other.hr &&
        fa == other.fa;
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
                                $jc($jc($jc(0, de.hashCode), es.hashCode),
                                    fr.hashCode),
                                ja.hashCode),
                            it.hashCode),
                        br.hashCode),
                    pt.hashCode),
                nl.hashCode),
            hr.hashCode),
        fa.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Translations')
          ..add('de', de)
          ..add('es', es)
          ..add('fr', fr)
          ..add('ja', ja)
          ..add('it', it)
          ..add('br', br)
          ..add('pt', pt)
          ..add('nl', nl)
          ..add('hr', hr)
          ..add('fa', fa))
        .toString();
  }
}

class TranslationsBuilder
    implements Builder<Translations, TranslationsBuilder> {
  _$Translations _$v;

  String _de;
  String get de => _$this._de;
  set de(String de) => _$this._de = de;

  String _es;
  String get es => _$this._es;
  set es(String es) => _$this._es = es;

  String _fr;
  String get fr => _$this._fr;
  set fr(String fr) => _$this._fr = fr;

  String _ja;
  String get ja => _$this._ja;
  set ja(String ja) => _$this._ja = ja;

  String _it;
  String get it => _$this._it;
  set it(String it) => _$this._it = it;

  String _br;
  String get br => _$this._br;
  set br(String br) => _$this._br = br;

  String _pt;
  String get pt => _$this._pt;
  set pt(String pt) => _$this._pt = pt;

  String _nl;
  String get nl => _$this._nl;
  set nl(String nl) => _$this._nl = nl;

  String _hr;
  String get hr => _$this._hr;
  set hr(String hr) => _$this._hr = hr;

  String _fa;
  String get fa => _$this._fa;
  set fa(String fa) => _$this._fa = fa;

  TranslationsBuilder();

  TranslationsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _de = $v.de;
      _es = $v.es;
      _fr = $v.fr;
      _ja = $v.ja;
      _it = $v.it;
      _br = $v.br;
      _pt = $v.pt;
      _nl = $v.nl;
      _hr = $v.hr;
      _fa = $v.fa;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Translations other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Translations;
  }

  @override
  void update(void Function(TranslationsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Translations build() {
    final _$result = _$v ??
        new _$Translations._(
            de: de,
            es: es,
            fr: fr,
            ja: ja,
            it: it,
            br: br,
            pt: pt,
            nl: nl,
            hr: hr,
            fa: fa);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
