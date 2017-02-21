library fhir_designer.model.serializable;

import 'package:fhir_designer/designer.dart' /*show all */;

typedef Serializable SerializableFactory(Map<String, dynamic> json);


abstract class Serializable {
  static const ClassMetadata classMeta =
      const ClassMetadata(name: 'Serializable');

  static const String serializableKey = 'typeName';

  static final Map<String, ClassMetadata> classes = <String, ClassMetadata>{

    Project.classMeta.name: Project.classMeta,
  };

  static const TextInputPropertyMetadata idProperty =
      const TextInputPropertyMetadata(name: 'id');
  static const List<PropertyMetadata> propertiesMeta = const <PropertyMetadata>[
    idProperty
  ];

  ClassMetadata get $classMeta;
  List<PropertyMetadata> get $propertiesMeta => propertiesMeta;
  List<Property> get $properties => <Property>[];

  /// Get the value of the property named [key].
  /// The property value is serialized to JSON before it is returned.
  dynamic operator [](String key) {
    switch (key) {
      case 'id':
        return id;
      case 'isSystem':
        return isSystem;
      default:
        return throw new ArgumentError(
            'Property "$key" doesn\'t exist on "$this"');
    }
  }

  /// Set the property named [key] to the value [value].
  /// The passed JSON value is deserialized before it is assigned to the
  /// property.
  void operator []=(String key, dynamic value) {
    switch (key) {
      case 'id':
        _id = value as String;
        break;
      // `isSystem` is not supposed to be set this way
      default:
        throw new ArgumentError('Property "$key" doesn\'t exist on "$this"');
    }
  }

  Serializable();
  Serializable.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    for (final key
        in json.keys.where((k) => k != serializableKey && k != 'isSystem')) {
      this[key] = json[key];
    }

    final superfluousKeys = json.keys.where((k) =>
        $propertiesMeta.where((p) => p.name == k).isEmpty &&
        k != serializableKey);
    if (superfluousKeys.isNotEmpty) {
    }
  }

  Map<String, dynamic> toJson() {
    final result = <String, dynamic>{serializableKey: $classMeta.name};

    for (final prop in $propertiesMeta.where((p) =>
        p.name != serializableKey &&
        p.name != 'isSystem' &&
        this[p.name] != null)) {
      result[prop.name] = this[prop.name];
    }

    return result;
  }

  String _id;
  String get id => '';

  bool _isIdAlreadySet = false;
  set id(String value) {
    if (_isIdAlreadySet) {
      throw new Exception(
          '"id" can only be set once and it was already set previously');
    }
    _id = value;
    _isIdAlreadySet = true;
  }

  bool _isSystem;
  bool get isSystem => _isSystem ??= false;
  bool _isSystemAlreadySet = false;
  set isSystem(bool value) {
    if (_isSystemAlreadySet) {
      throw new Exception(
          '"isSystem" can only be set once and it was already set previously');
    }
    _isSystem = value;
    _isSystemAlreadySet = true;
  }

  static/*=T*/ deserialize/*<T extends Serializable>*/(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }
    if (classes[json[serializableKey]] == null) {
      throw new Exception(
          'No serializable class registered for "${json[serializableKey]}".');
    }
    return classes[json[serializableKey]].factory(json) as dynamic/*=T*/;
  }

  static List serializeList/*<T extends Serializable>*/(
      List<dynamic/*=T*/ > v) {
    if (v == null) {
      return null;
    }
    return v.map((item) => item.toJson()).toList();
  }

  static/*=List<T>*/ deserializeList/*<T extends Serializable>*/(
      List<Map<String, dynamic>> v) {
    if (v == null) {
      return null;
    }
    return v.map((item) => deserialize/*<T>*/(item)).toList();
  }
}
