import 'package:bengo_app/Features/select_package/presentation/views/widgets/confirm_purchase_dialog.dart';
import 'package:bengo_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CourseContentAccordion extends StatelessWidget {
  final String title;
  final String count;
  final List<CourseContentItem> items;
  final String image;

  const CourseContentAccordion({
    super.key,
    required this.title,
    required this.count,
    required this.items,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
        padding: EdgeInsets.only(bottom: 16.h),
        child: Material(
          color: Colors.transparent,
          child: Ink(
            decoration: BoxDecoration(
              color: const Color(0xFFF8F9FD),
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.grey[200]!),
            ),
            child: Theme(
              data: Theme.of(
                context,
              ).copyWith(dividerColor: Colors.transparent),
              child: ExpansionTile(
                tilePadding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 12,
                ),
                title: Row(
                  children: [
                    Image.asset(
                      image,
                      width: 30,
                      height: 30,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: Styles.textStyle18.copyWith(
                            fontWeight: FontWeight.bold,
                            color: const Color(0xff272323),
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          count,
                          style: Styles.textStyle14.copyWith(
                            color: Colors.grey[500],
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                subtitle: null,

                children: [
                  Container(
                    color: Colors.white,
                    child: Column(children: items),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CourseContentItem extends StatelessWidget {
  final String title;
  final String price;
  final String itemIcon;

  const CourseContentItem({
    super.key,
    required this.title,
    required this.price,
    required this.itemIcon,
  });

  @override
  Widget build(BuildContext context) {
    List<String> titleParts = title.split('-');
    String firstPart = titleParts[0].trim();

    if (titleParts.length > 1) {
      firstPart += " -";
    }

    String secondPart = titleParts.length > 1 ? titleParts[1].trim() : "";

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: const Color(0xFFF8F9FD),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey[100]!),
        ),
        child: Row(
          children: [
            Image.asset(itemIcon, width: 24, height: 24, fit: BoxFit.contain),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    firstPart,
                    style: Styles.textStyle14.copyWith(
                      fontWeight: FontWeight.bold,
                      color: const Color(0xff272323),
                    ),
                    textAlign: TextAlign.right,
                  ),
                  if (secondPart.isNotEmpty)
                    Text(
                      secondPart,
                      style: Styles.textStyle14.copyWith(
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff272323),
                      ),
                      textAlign: TextAlign.right,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                ],
              ),
            ),
            const SizedBox(width: 12),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                gradient: AppStyles.kPriceButton,
                borderRadius: BorderRadius.circular(14),
                border: Border.all(color: Colors.orange[200]!),
              ),
              child: GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) => Dialog(
                      backgroundColor: Colors.transparent,
                      insetPadding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: SizedBox(
                        height: 600.h, // هنا تحدد الطول الثابت للديالوج بالكامل
                        child: ConfirmPurchaseDialog(
                          itemName: title,
                          price: price,
                        ),
                      ),
                    ),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    gradient: AppStyles.kPriceButton,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.orange[200]!),
                  ),
                  child: Text(
                    "$price ج.م",
                    style: Styles.textStyle12.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
