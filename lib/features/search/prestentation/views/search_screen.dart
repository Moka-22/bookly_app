import 'package:bookly/features/search/prestentation/views/widgets/search_screen_widget.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SearchScreenWidget(),
      ),
    );
  }
}
