import 'package:booklyapp/Features/home/presentation/views/widgets/books_details_section.dart';
import 'package:booklyapp/Features/home/presentation/views/widgets/custom_book_details_appbar.dart';
import 'package:booklyapp/Features/home/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                CustomBookDetailsAppBar(),
                BooksDetailsSction(),
                Expanded(
                  child: SizedBox(
                    height: 25,
                  ),
                ),
                SimilarBooksSection(),
                SizedBox(
                  height: 30,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
