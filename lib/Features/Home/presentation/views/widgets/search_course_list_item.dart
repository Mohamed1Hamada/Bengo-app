import 'package:bengo_app/core/utlis/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchCourseListItem extends StatelessWidget {
  const SearchCourseListItem({
    super.key,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.image,
    this.isPaid = true,
  });

  final String title;
  final String subtitle;
  final int price;
  final String image;
  final bool isPaid;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 196.h,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _PaidBadge(isPaid: isPaid),
          SizedBox(width: 60.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.right,
                  style: Styles.textStyle30.copyWith(
                    color: const Color(0xFF272323),
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.w800,
                    height: 1.15,
                  ),
                ),
                SizedBox(height: 8.h),
                Text(
                  subtitle,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.right,
                  style: Styles.textStyle22.copyWith(
                    color: const Color(0xFF542343),
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.w500,
                    height: 1.15,
                  ),
                ),
                SizedBox(height: 20.h),
                _PriceBadge(price: price),
              ],
            ),
          ),
          SizedBox(width: 32.w),
          _CourseImage(image: image),
        ],
      ),
    );
  }
}

class _CourseImage extends StatelessWidget {
  const _CourseImage({required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 138.w,
      height: 152.h,
      child: Image.asset(image, fit: BoxFit.contain),
    );
  }
}

class _PaidBadge extends StatelessWidget {
  const _PaidBadge({required this.isPaid});

  final bool isPaid;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 94.w,
      height: 44.h,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: const Color(0xFF2F58B7),
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Text(
        isPaid ? 'مدفوع' : 'مجاني',
        style: Styles.textStyle18.copyWith(
          color: Colors.white,
          fontFamily: 'Cairo',
          fontWeight: FontWeight.w700,
          height: 1,
        ),
      ),
    );
  }
}

class _PriceBadge extends StatelessWidget {
  const _PriceBadge({required this.price});

  final int price;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 128.w,
      height: 60.h,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        gradient: AppStyles.kButton,
        borderRadius: BorderRadius.circular(17.r),
      ),
      child: Text(
        'ج.م $price',
        textDirection: TextDirection.rtl,
        style: Styles.textStyle20.copyWith(
          color: Colors.white,
          fontFamily: 'Cairo',
          fontWeight: FontWeight.w600,
          height: 1,
        ),
      ),
    );
  }
}
