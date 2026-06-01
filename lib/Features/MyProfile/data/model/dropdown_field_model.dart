/// dropdown_field_model.dart
///
/// نموذج حقل القائمة المنسدلة (Dropdown)
class DropdownFieldModel {
  final String id;
  final String label;
  final String placeholder;
  final List<String> options;
  final String value;
  const DropdownFieldModel({
    required this.id,
    required this.label,
    required this.placeholder,
    required this.options,
    required this.value,
  });
}