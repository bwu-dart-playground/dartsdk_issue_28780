import 'package:fhir_designer/designer.dart';

typedef T PropertyGetter<T>();
typedef void PropertySetter<T>(T value);

class Property<T> {
  final PropertyGetter<T> _getter;
  final PropertySetter<T> _setter;
  final PropertyMetadata meta;

  T get value => _getter();
  set value(T value) {
    _setter(value);
  }

  Property(this._getter, this._setter, this.meta);

  @override
  int get hashCode => super.hashCode;

  @override
  bool operator ==(dynamic other) {
    return other is Property &&
        _getter == other._getter &&
        _setter == other._setter;
  }
}
