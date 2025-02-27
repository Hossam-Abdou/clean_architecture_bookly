import 'package:bookly_app_clean/core/utils/app_constants.dart';
import 'package:bookly_app_clean/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'widgets/best_seller_lit_view_item.dart';
import 'widgets/custom_app_bar.dart';
import 'widgets/custom_list_view_item.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              // CustomListViewItem(),
              FeaturedListViewItem(),
              SizedBox(
                height: 40,
              ),
              Text('Best Sellers', style: Styles.textStyle18),
              BestSellerLitViewItem(),
            ],
          ),
        ),
      ),
    );
  }
}
