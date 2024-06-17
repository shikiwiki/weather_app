class Parameter {
  final String parameterType;
  final String value;

  const Parameter({required this.parameterType, required this.value});

  @override
  int get hashCode => super.hashCode * parameterType.length ^ value.length;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Parameter &&
        other.parameterType == parameterType &&
        other.value == value;
  }
}
