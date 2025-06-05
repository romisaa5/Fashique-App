import 'package:e_commerce/Featured/store/presentation/widgets/custom_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListOfCards extends StatelessWidget {
  const ListOfCards({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true, 
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 8.h),
          child: CustomCard(),
        );
      },
    );
  }
}

