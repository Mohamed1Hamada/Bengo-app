import 'package:flutter/material.dart';

import '../resources/course_note_card.dart';

class NotesContent extends StatelessWidget {
  const NotesContent({super.key});

  static const List<NoteUiModel> _notes = [
    NoteUiModel(
      title: 'ملاحظة هامة -\nالمحاضرة الأولى',
      description:
          'يرجى التركيز على الفرق بين المحاسبة المالية والمحاسبة الإدارية في هذا الدرس لأنه سيكون جزء أساسي في الامتحان النهائي.',
      isImportant: true,
    ),
    NoteUiModel(
      title: 'نصيحة للمحاضرة',
      description:
          'احرص على حل التمارين العملية بعد كل محاضرة لفهم القيود والمعادلات بشكل مستمر.',
    ),
  ];

  void _onNoteTap(BuildContext context, NoteUiModel note) {
    debugPrint('Note tapped: ${note.title}');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int index = 0; index < _notes.length; index++) ...[
          CourseNoteCard(
            note: _notes[index],
            onTap: () {
              _onNoteTap(context, _notes[index]);
            },
          ),

          if (index != _notes.length - 1) const SizedBox(height: 12),
        ],
      ],
    );
  }
}
