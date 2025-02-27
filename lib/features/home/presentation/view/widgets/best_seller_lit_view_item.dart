import 'package:bookly_app_clean/core/utils/app_constants.dart';
import 'package:bookly_app_clean/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BestSellerLitViewItem extends StatelessWidget {
  const BestSellerLitViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView.separated(
      itemCount: 10,
shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => BookItem(),
        separatorBuilder: (context, index) => const SizedBox(
              height: 10,
            ),
       );
  }
}

class BookItem extends StatelessWidget {
  const BookItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.3 / 4,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.red,
                  image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      AppImages.test,
                    ),
                  )),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * .5,
                  child: const Text(
                    'Harry Potterand the Goblet of Fire',
                    style: Styles.textStyle18,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                const Text(
                  'J.K. Rowling',
                  style: Styles.textStyle14,
                ),
                const SizedBox(
                  height: 3,
                ),
                const BookRating()
              ],
            ),
          )
        ],
      ),
    );
  }
}

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '19.99 €',
          style: Styles.textStyle20.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(),
        const FaIcon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
        ),
        const Text(
          ' 4.8',
          style: Styles.textStyle16,
        ),
        const Text(
          ' (245)',
          style: Styles.textStyle14,
        ),
      ],
    );
  }
}
