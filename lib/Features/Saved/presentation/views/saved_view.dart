import 'package:bengo_app/Features/Saved/presentation/views/widgets/saved_view_body.dart';
import 'package:flutter/material.dart';

class SavedView extends StatelessWidget {
  const SavedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SavedViewBody(),
    );
  }
}
