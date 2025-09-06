import 'package:e_commerce/Featured/Home/presentation/widgets/custom_bannar.dart';
import 'package:e_commerce/Featured/Home/presentation/widgets/custom_build_header.dart';
import 'package:e_commerce/Featured/Home/presentation/widgets/custom_list_new_items.dart';
import 'package:e_commerce/Featured/Home/presentation/widgets/custom_list_sale_items.dart';
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
