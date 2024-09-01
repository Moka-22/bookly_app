import 'package:bookly/features/home/presentation/views/widgets/book_details_widget.dart';
import 'package:flutter/material.dart';

class BookDetailsScreen extends StatelessWidget {
  const BookDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BookDetailsWidget(),
      ),
    );
  }
}
