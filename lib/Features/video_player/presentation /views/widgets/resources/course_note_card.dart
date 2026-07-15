import 'package:bengo_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class NoteUiModel {
  const NoteUiModel({
    required this.title,
    required this.description,
    this.isImportant = false,
  });

  final String title;
  final String description;
  final bool isImportant;
}

class CourseNoteCard extends StatelessWidget {
  const CourseNoteCard({super.key, required this.note, this.onTap});

  final NoteUiModel note;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final double cardHeight = note.isImportant ? 200 : 160;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(18),
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(18),
          child: Ink(
            height: cardHeight,
            decoration: BoxDecoration(
              color: note.isImportant
                  ? const Color(0xFFFFF4F4)
                  : const Color(0xFFF0F4FD),
              borderRadius: BorderRadius.circular(18),
              border: note.isImportant
                  ? Border.all(color: const Color(0xFFD32F2F), width: 1.2)
                  : null,
            ),
            child: Stack(
              children: [
                Positioned.fill(
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 18,
                      right: 18,
                      left: note.isImportant ? 72 : 18,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      textDirection: TextDirection.rtl,
                      children: [
                        NoteIconCircle(isImportant: note.isImportant),

                        const SizedBox(width: 10),

                        Expanded(
                          child: NoteTextInfo(
                            title: note.title,
                            description: note.description,
                            isImportant: note.isImportant,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                if (note.isImportant)
                  const Positioned(left: 18, top: 20, child: ImportantBadge()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class NoteTextInfo extends StatelessWidget {
  const NoteTextInfo({
    super.key,
    required this.title,
    required this.description,
    required this.isImportant,
  });

  final String title;
  final String description;
  final bool isImportant;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            title,
            textAlign: TextAlign.right,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Styles.textStyle18.copyWith(
              color: const Color(0xFF272323),
              fontWeight: FontWeight.w700,
              height: 1.35,
            ),
          ),

          const SizedBox(height: 8),

          Text(
            description,
            textAlign: TextAlign.right,
            maxLines: isImportant ? 4 : 3,
            overflow: TextOverflow.ellipsis,
            style: Styles.textStyle14.copyWith(
              color: const Color(0xFF6F7480),

              fontWeight: FontWeight.w400,
              height: 1.45,
            ),
          ),
        ],
      ),
    );
  }
}

class ImportantBadge extends StatelessWidget {
  const ImportantBadge({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 38,
      height: 24,
      decoration: BoxDecoration(
        color: const Color(0xFFD32F2F),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Text(
          'هام',
          style: Styles.textStyle14.copyWith(
            color: Colors.white,
            fontSize: 11,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}

class NoteIconCircle extends StatelessWidget {
  const NoteIconCircle({super.key, required this.isImportant});

  final bool isImportant;

  @override
  Widget build(BuildContext context) {
    const Color normalIconBackgroundColor = Color(0xFF1565C0);

    return Container(
      width: 54,
      height: 54,
      decoration: BoxDecoration(
        shape: BoxShape.circle,

        /// لو الملاحظة مهمة خليها gradient
        gradient: isImportant ? AppStyles.kMainGradient : null,

        /// لو الملاحظة عادية غير لون الخلفية من هنا
        color: isImportant ? null : normalIconBackgroundColor,
      ),
      child: Center(
        child: Image.asset(
          'assets/images/tapIcon4.png',
          width: 26,
          height: 26,
          fit: BoxFit.contain,
          color: Colors.white,
        ),
      ),
    );
  }
}
