import 'package:booklyapp/Features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:booklyapp/Features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:booklyapp/Features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:booklyapp/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              FeaturedBooksListView(),
              SizedBox(
                height: 45,
              ),
              Padding(
                padding: EdgeInsets.only(left: 30),
                child: Text(
                  'Newset Books',
                  style: Styles.textStyle18,
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.only(left: 30),
            child: BestSellerListView(),
          ),
        )
      ],
    );
    // return const Padding(
    //   padding: EdgeInsets.only(left: 30),
    //   child: Column(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: [
    //       CustomAppBar(),
    //       FeaturedBooksListView(),
    //       SizedBox(
    //         height: 45,
    //       ),
    //       Text(
    //         'Best Seller',
    //         style: Styles.textStyle18,
    //       ),
    //       SizedBox(
    //         height: 20,
    //       ),
    //       BestSellerListView()
    //     ],
    //   ),
    // );
  }
}
