import 'package:equatable/equatable.dart';

class FormItem {

  const FormItem({
    required this.label,
    this.value = '',
    this.error,
  });

  final String label;
  final String? value;
  final String? error;

  FormItem copyWith({
    String? error,
    String? value,
  }) {
    return FormItem(
      label: label,
      error: error ?? this.error,
      value: value ?? this.value,
    );
  }

}