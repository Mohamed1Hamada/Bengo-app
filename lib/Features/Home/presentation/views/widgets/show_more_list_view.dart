import 'package:bengo_app/Features/Home/data/search_dummy_data.dart';
import 'package:bengo_app/Features/Home/presentation/views/widgets/custom_search_card.dart';
import 'package:flutter/material.dart';

class ShowMoreListView extends StatelessWidget {
  const ShowMoreListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.symmetric(vertical: 10),
      itemCount: dummyCourses.length,
      itemBuilder: (context, index) {
        return CustomSearchCard(
          model: dummyCourses[index],
          showPaidBadge: false,
        );
      },
    );
  }
}
