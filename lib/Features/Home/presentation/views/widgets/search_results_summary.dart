// import 'package:bengo_app/core/utlis/styles.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class SearchResultsSummary extends StatelessWidget {
//   const SearchResultsSummary({super.key, required this.resultsCount});

//   final int resultsCount;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.symmetric(horizontal: 52.w),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.end,
//         children: [
//           Text(
//             'نتائج البحث',
//             style: Styles.textStyle32.copyWith(
//               color: const Color(0xFF272323),
//               fontFamily: 'Cairo',
//               fontWeight: FontWeight.w800,
//             ),
//           ),
//           SizedBox(height: 8.h),
//           Text.rich(
//             TextSpan(
//               children: [
//                 const TextSpan(text: 'تم العثور على '),
//                 TextSpan(
//                   text: '$resultsCount',
//                   style: const TextStyle(
//                     color: Color(0xFF1F55B6),
//                     fontWeight: FontWeight.w700,
//                   ),
//                 ),
//                 const TextSpan(text: ' كورس'),
//               ],
//             ),
//             textAlign: TextAlign.right,
//             textDirection: TextDirection.rtl,
//             style: Styles.textStyle22.copyWith(
//               color: const Color(0xFF777777),
//               fontFamily: 'Cairo',
//               fontWeight: FontWeight.w500,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
