import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/views/sections/book_details_sections.dart';
import 'package:bookly/features/home/presentation/views/sections/similar_books_sections.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_appbar_book_details.dart';
import 'package:flutter/material.dart';

class BookDetailsWidget extends StatelessWidget {
  const BookDetailsWidget({super.key, required this.bookModel});
final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                CustomBookDetailsAppBar(),
                BooksDetailsSection(book: bookModel,),
                const Expanded(
                  child: const SizedBox(
                    height: 50,
                  ),
                ),
                SimilarBooksSections(),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
