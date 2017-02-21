import 'package:fhir_designer/designer.dart' show SerializableFactory;

class ClassMetadata {
  final String name;
  final SerializableFactory factory;
  final bool isAbstract;
  final Type superClass;

  const ClassMetadata(
      {this.name, this.factory, this.isAbstract: false, this.superClass});
}
