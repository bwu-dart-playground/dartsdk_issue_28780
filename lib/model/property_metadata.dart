class PropertyMetadata {
  final String name;
  final String label;
  final String description;

  const PropertyMetadata({this.name, this.label, this.description});
}

class InputPropertyMetadata extends PropertyMetadata {
  final int displayWidth;

  const InputPropertyMetadata(
      {String name, String label, int displayWidth: 35, String description})
      : displayWidth =
            displayWidth != null && displayWidth >= 0 ? displayWidth : 35, // TODO(zoechi) https://github.com/dart-lang/sdk/issues/28780
        super(name: name, label: label, description: description);
}

class TextInputPropertyMetadata extends InputPropertyMetadata {
  final int minLength;
  final int maxLength;
  final bool multiLine;

  const TextInputPropertyMetadata(
      {String name,
      String label,
      String description,
      int displayWidth,
      bool multiLine: false,
      int minLength,
      int maxLength: 255})
      : multiLine = multiLine ?? false,
        minLength = minLength, //== null || minLength > 0 ? minLength : null,
        maxLength = maxLength, //!= null && maxLength > 0 ? maxLength : 255,
        super(
            name: name,
            label: label,
            description: description,
            displayWidth: displayWidth);
}
