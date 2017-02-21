// GENERATED CODE - DO NOT MODIFY BY HAND

part of fhir_designer.model.project;

// **************************************************************************
// Generator: ModelGenerator
// Target: abstract class Project
// **************************************************************************

class _$Project extends Project {
  // constructors
  _$Project._() : super._();

  _$Project._fromJson(Map<String, dynamic> json) : super._fromJson(json);

  // class metadata
  static _$Project _serializableFactory(Map<String, dynamic> json) =>
      new _$Project._fromJson(json);

  static const ClassMetadata classMeta =
      const ClassMetadata(name: 'Project', factory: _serializableFactory);

  @override
  ClassMetadata get $classMeta => classMeta;

  // properties metadata
  static List<PropertyMetadata> _propertiesMeta;
  static List<PropertyMetadata> get propertiesMeta => _propertiesMeta ??= [
        <PropertyMetadata>[
          nameMeta,
          descriptionMeta,
          dataConnectionsMeta,
          menusMeta,
          menuItemsMeta,
          formsMeta,
          searchFormsMeta,
          fieldsMeta,
          fieldGroupsMeta,
          fieldGroupElementsMeta,
          isLockedMeta,
        ],
        Serializable.propertiesMeta
      ].expand((p) => p).toList();

  @override
  List<PropertyMetadata> get $propertiesMeta => propertiesMeta;

  static const TextInputPropertyMetadata nameMeta =
      const TextInputPropertyMetadata(
    name: 'name',
    minLength: 3,
    maxLength: 255,
    multiLine: false,
    description: 'An unique name for the project',
  );

  static const TextInputPropertyMetadata descriptionMeta =
      const TextInputPropertyMetadata(
    name: 'description',
    maxLength: 1000,
    multiLine: true,
    description: 'A description of the project',
  );

  static const PropertyMetadata dataConnectionsMeta =
      const PropertyMetadata(name: 'dataConnections');
  static const PropertyMetadata menusMeta =
      const PropertyMetadata(name: 'menus');
  static const PropertyMetadata menuItemsMeta =
      const PropertyMetadata(name: 'menuItems');
  static const PropertyMetadata formsMeta =
      const PropertyMetadata(name: 'forms');
  static const PropertyMetadata searchFormsMeta =
      const PropertyMetadata(name: 'searchForms');
  static const PropertyMetadata fieldsMeta =
      const PropertyMetadata(name: 'fields');
  static const PropertyMetadata fieldGroupsMeta =
      const PropertyMetadata(name: 'fieldGroups');
  static const PropertyMetadata fieldGroupElementsMeta =
      const PropertyMetadata(name: 'fieldGroupElements');
  static const PropertyMetadata isLockedMeta =
      const PropertyMetadata(name: 'isLocked');
  @override
  List<Property> get $properties => [
        <Property>[
          nameProperty,
          descriptionProperty,
          isLockedProperty,
        ],
        super.$properties
      ].expand((p) => p).toList();

  @override
  dynamic operator [](String key) {
    switch (key) {
      case 'name':
        return name;
      case 'description':
        return description;
      case 'isLocked':
        return isLocked;
      default:
        return super[key];
    }
  }

  @override
  void operator []=(String key, dynamic value) {
    switch (key) {
      case 'name':
        name = value as String;
        break;
      case 'description':
        description = value as String;
        break;

        break;
      case 'isLocked':
        isLocked = value as bool;
        break;
      default:
        super[key] = value;
    }
  }

  Property<String> _nameProperty;
  @override
  Property<String> get nameProperty =>
      _nameProperty ??= new Property<String>(() => name, (String value) {
        name = value;
      }, nameMeta);

  Property<String> _descriptionProperty;
  @override
  Property<String> get descriptionProperty => _descriptionProperty ??=
          new Property<String>(() => description, (String value) {
        description = value;
      }, descriptionMeta);



  Property<bool> _isLockedProperty;
  @override
  Property<bool> get isLockedProperty =>
      _isLockedProperty ??= new Property<bool>(() => isLocked, (bool value) {
        isLocked = value;
      }, isLockedMeta);
}
