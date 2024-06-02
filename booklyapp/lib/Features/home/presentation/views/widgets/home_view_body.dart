import 'package:booklyapp/Features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:booklyapp/Features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:booklyapp/constants.dart';
import 'package:booklyapp/core/utils/assets.dart';
import 'package:booklyapp/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedBooksListView(),
          SizedBox(
            height: 45,
          ),
          Text(
            'Best Seller',
            style: Styles.textStyle18,
          ),
          SizedBox(
            height: 20,
          ),
          BestSellerListViewItem(),
        ],
      ),
    );
  }
}

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(AssetsData.test1),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .5,
                child: const Text(
                  'Harry Potter and the Goblet of Fire',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Styles.textStyle20,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
