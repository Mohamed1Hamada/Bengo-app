import 'package:bengo_app/Features/Home/presentation/views/widgets/show%20more/show_more_view_body.dart';
import 'package:flutter/material.dart';

class ShowMoreView extends StatelessWidget {
  const ShowMoreView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: ShowMoreViewBody(),
    );
  }
}