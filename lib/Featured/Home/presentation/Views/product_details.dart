import 'package:e_commerce/Featured/Home/presentation/widgets/drop_down_menu.dart';
import 'package:e_commerce/Featured/Home/presentation/widgets/stars_rate.dart';
import 'package:e_commerce/Featured/Home/presentation/models/product.dart';
import 'package:e_commerce/constnts.dart';
import 'package:e_commerce/core/utils/app_router.dart';
import 'package:e_commerce/core/utils/styles.dart';
import 'package:e_commerce/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key, required this.product});
  final Product product;

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  bool isFavorite = false;
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(widget.product.title, style: Styles.textStyle18),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.share))],
        leading: IconButton(
          onPressed: () {
            GoRouter.of(context).pop(AppRouter.bottnavbar);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          spacing: 10,
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
                spacing: 5,
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
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                isFavorite = !isFavorite;
                              });
                            },
                            icon: Icon(
                              isFavorite
                                  ? Icons.favorite
                                  : Icons.favorite_border_outlined,
                              color: isFavorite ? Colors.red : Colors.black45,
                              size: 18,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.product.title,
                        style: Styles.textStyle18,
                      ),
                      Text(
                        ' \$ ${widget.product.price} ',
                        style: Styles.textStyle18,
                      )
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
                  SizedBox(
                    height: 10,
                  ),
                  CustomButton(
                      borderreduis: 25,
                      text: 'Add to cart',
                      color: KprimaryColor,
                      width: double.infinity),
                  SizedBox(
                    height: 25.h,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
