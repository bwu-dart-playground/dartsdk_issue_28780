library fhir_designer.model.project;

import 'package:fhir_designer/designer.dart'
    show
        ClassMetadata,
        DataConnection,
        DataConnectionReference,
        Field,
        FieldGroup,
        FieldGroupElement,
        Form,
        Menu,
        MenuItem,
        Property,
        PropertyMetadata,
        SearchForm,
        Serializable,
        TextInputPropertyMetadata;
//import 'package:fhir_designer/model/project_defaults.dart' show loadDefaults;

part 'project.g.dart';

abstract class Project extends Serializable {
  @TextInputPropertyMetadata(
      minLength: 3, description: 'An unique name for the project')
  String name;
  Property<String> get nameProperty;

  @TextInputPropertyMetadata(
      maxLength: 1000,
      multiLine: true,
      description: 'A description of the project')
  String description;
  Property<String> get descriptionProperty;

  bool _isLocked = false;

  /// The project is locked for editing
  @TextInputPropertyMetadata(
      description: 'Prevents saving changes for this project while locked')
  bool get isLocked => _isLocked ?? false;
  set isLocked(bool value) => _isLocked = value ?? false;
  Property<bool> get isLockedProperty;


  // for code generation
  static const ClassMetadata classMeta = _$Project.classMeta;
  static List<PropertyMetadata> get propertiesMeta => _$Project.propertiesMeta;

  factory Project() => new _$Project._();
  Project._() {
//    loadDefaults(this);
  }

  factory Project.fromJson(Map<String, dynamic> json) =>
      new _$Project._fromJson(json);

  Project._fromJson(Map<String, dynamic> json) : super.fromJson(json);
}
