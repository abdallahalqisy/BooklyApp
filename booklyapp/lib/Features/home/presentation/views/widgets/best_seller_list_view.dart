import 'package:booklyapp/Features/home/presentation/manger/newset%20books%20cubit/newset_books_cubit.dart';
import 'package:booklyapp/Features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:booklyapp/core/widgets/custom_error_widgets.dart';
import 'package:booklyapp/core/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBooksCubit, NewsetBooksState>(
      builder: (context, state) {
        if (state is NewsetBooksSuccess) {
          return ListView.builder(
              // السطرين اللي تحت دول عشان اعرف اعمل اسكرول ل البيدج كلها

              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: BookListViewItem(
                    bookModel: state.books[index],
                  ),
                );
              });
        } else if (state is NewsetBooksFailure) {
          return CustomErrorWidgets(errMessage: state.errorMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
