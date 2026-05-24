import 'package:bengo_app/Features/Home/presentation/views/widgets/search_app_header.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key, });

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Column(
        children: [
          const SearchAppHeader(
         
          ),
       
          // هنا يمكنك إضافة قائمة النتائج أو أي محتوى آخر
        ],
      ),

    );
  }
}