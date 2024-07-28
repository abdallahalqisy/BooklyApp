import 'package:booklyapp/Features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:booklyapp/Features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:booklyapp/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          CustomSearchTextField(),
          SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Search Result',
              style: Styles.textStyle18,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(child: SearchResultListView())
        ],
      ),
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
              padding: EdgeInsets.symmetric(vertical: 10), child: Text('data')
              // BookListViewItem(),
              );
        });
  }
}
