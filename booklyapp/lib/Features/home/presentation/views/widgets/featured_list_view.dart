import 'package:booklyapp/Features/home/presentation/manger/featured%20books%20cubit/featured_books_cubit.dart';
import 'package:booklyapp/Features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:booklyapp/core/widgets/custom_error_widgets.dart';
import 'package:booklyapp/core/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .28,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return CustomBookImage(
                    imagUrl:
                        state.books[index].volumeInfo.imageLinks?.thumbnail ??
                            '');
              },
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomErrorWidgets(errMessage: state.errorMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
