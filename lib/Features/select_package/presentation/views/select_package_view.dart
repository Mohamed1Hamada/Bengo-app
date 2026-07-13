import 'package:bengo_app/Features/select_package/presentation/views/widgets/select_package_body.dart';
import 'package:flutter/material.dart';

class SelectPackageView extends StatefulWidget {
  const SelectPackageView({super.key});

  @override
  State<SelectPackageView> createState() => _SelectPackageViewState();
}

class _SelectPackageViewState extends State<SelectPackageView> {
  int selectedIndex = 0;

  void onPackageSelected(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),

        child: SelectPackageBody(
          selectedIndex: selectedIndex,
          onPackageSelected: onPackageSelected,
        ),
      ),
    );
  }
}
