import 'package:e_commerce/Featured/Home/presentation/widgets/catogeries_list.dart';
import 'package:e_commerce/Featured/Home/presentation/widgets/custom_bannar.dart';
import 'package:e_commerce/Featured/Home/presentation/widgets/custom_build_header.dart';
import 'package:e_commerce/Featured/Home/presentation/widgets/custom_list_new_items.dart';
import 'package:e_commerce/Featured/Home/presentation/widgets/custom_list_sale_items.dart';
import 'package:e_commerce/constnts.dart';
import 'package:e_commerce/core/utils/styles.dart';
import 'package:e_commerce/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Homeview extends StatelessWidget {
  const Homeview({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomBannar(),

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 10.h,
              children: [
                AppTextFormField(
                  suffixIcon: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: kprimaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6.r),
                      ),
                    ),
                    onPressed: () {},
                    label: Icon(Icons.search, color: Colors.white),
                  ),
                  hintText: 'Search in Market......',
                ),

                Text('Catogeries', style: Styles.textStyle18),

                CatogeriesList(),
                CustomBuildHeader(
                  ontap: () {},
                  title: 'Sale',
                  subTitle: 'Super summer sale',
                ),

                CustomListSaleItems(),
                CustomBuildHeader(
                  ontap: () {},
                  title: 'New',
                  subTitle: 'You’ve never seen it before!',
                ),
                CustomListNewItems(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//     return SingleChildScrollView(
//       child: Column(
//         spacing: 10.h,
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//          CustomBannar(),
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 24.0,),
//           child: Column(
//             spacing: 10,
//             children: [
//               CustomBuildHeader(
//                 ontap: (){},
//                 title: 'Sale', 
//                 subTitle: 'Super summer sale'),
//                 CustomListSaleItems(),
//                  CustomBuildHeader(
//                 ontap: (){},
//                 title: 'New', 
//                 subTitle: 'You’ve never seen it before!'),
//               CustomListNewItems()
//             ],
//           ),
//         ),
//         ],
//       ),
//     );
//   }
// }
