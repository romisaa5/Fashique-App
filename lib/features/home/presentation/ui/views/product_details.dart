
import 'package:e_commerce/constnts.dart';
import 'package:e_commerce/core/theme/styles.dart';
import 'package:e_commerce/core/widgets/custom_app_bar.dart';
import 'package:e_commerce/core/widgets/custom_button.dart';
import 'package:e_commerce/core/widgets/custom_favorite_icon.dart';
import 'package:e_commerce/core/widgets/custom_text_form_field.dart';
import 'package:e_commerce/features/home/data/models/product.dart';
import 'package:e_commerce/features/home/presentation/ui/widgets/comments_list.dart';
import 'package:e_commerce/features/home/presentation/ui/widgets/drop_down_menu.dart';
import 'package:e_commerce/features/home/presentation/ui/widgets/stars_rate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key, required this.product});
  final Product product;

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(text: widget.product.title),
      body: SingleChildScrollView(
        child: Column(
          spacing: 10.h,
          children: [
            widget.product.imageUrl.isNotEmpty
                ? Image.asset(
                  widget.product.imageUrl,
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * .5,
                  fit: BoxFit.fill,
                )
                : Placeholder(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                spacing: 10.h,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DropDown(
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedValue = newValue;
                          });
                        },
                        hinttext: 'size',
                        items: ['S', 'M', 'L', 'XL', 'XXL'],
                      ),
                      DropDown(
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedValue = newValue;
                          });
                        },
                        hinttext: 'Color',
                        items: ['Black', 'Red', 'White', 'Yellow', 'Pink'],
                      ),
                      SizedBox(
                        width: 36.w,
                        height: 36.h,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: CustomFavoriteIcon(),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(widget.product.title, style: Styles.textStyle18),
                      Text(
                        ' \$ ${widget.product.price} ',
                        style: Styles.textStyle18,
                      ),
                    ],
                  ),
                  Text(
                    'Short black dress',
                    style: Styles.textStyle12.copyWith(color: Colors.grey),
                  ),
                  StarsRate(),
                  Text(
                    'Short dress in soft cotton jersey with decorative buttons down the front and a wide, frill-trimmed square neckline with concealed elastication. Elasticated seam under the bust and short puff sleeves with a small frill trim.',
                    style: Styles.textStyle14,
                  ),
                  SizedBox(height: 10),
                  CustomButton(
                    borderreduis: 25,
                    text: 'Add to cart',
                    color: kprimaryColor,
                    width: double.infinity,
                  ),
                  SizedBox(height: 25.h),
                  Row(
                    spacing: 5.w,
                    children: [
                      Text('Write a Review', style: Styles.textStyle18),
                      Icon(Icons.edit, color: kSecondryColor),
                    ],
                  ),
                  SizedBox(height: 5.h),
                  AppTextFormField(
                    hintText: 'Type your Feedback....',
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.send, color: kprimaryColor),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Text('Reviews', style: Styles.textStyle18),
                  CommentsList(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
