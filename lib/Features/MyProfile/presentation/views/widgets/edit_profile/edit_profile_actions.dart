import 'package:flutter/material.dart';
import 'save_changes_button.dart';
import 'cancel_button.dart';
/// edit_profile_actions.dart
///
/// حاوية أزرار الحفظ والإلغاء
class EditProfileActions extends StatelessWidget {
  final VoidCallback? onSave;
  final VoidCallback? onCancel;
  const EditProfileActions({
    super.key,
    this.onSave,
    this.onCancel,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Column(
        children: [
          SaveChangesButton(onPressed: onSave),
          const SizedBox(height: 12),
          CancelButton(onPressed: onCancel),
        ],
      ),
    );
  }
}