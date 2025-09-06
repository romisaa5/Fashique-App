import 'package:e_commerce/features/cart/presentation/views/cart_view.dart';
import 'package:e_commerce/features/favorites/presentation/ui/views/favorites_view.dart';
import 'package:e_commerce/features/home/presentation/ui/views/homeview.dart';
import 'package:e_commerce/features/nav_bar/presentation/manager/nav_bar_cubit/nav_bar_cubit.dart';
import 'package:e_commerce/features/profile/presentation/ui/views/profile_view.dart';
import 'package:e_commerce/features/store/presentation/ui/views/store_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:e_commerce/constnts.dart';

class CustomBottomNavBar extends StatelessWidget {
  CustomBottomNavBar({super.key});
  final List<Widget> views = [
    Homeview(),
    StoreView(),
    CartView(),
    FavoritesView(),
    ProfileView(),
  ];
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavBarCubit(),
      child: BlocBuilder<NavBarCubit, NavBarState>(
        builder: (context, state) {
          NavBarCubit cubit = context.read<NavBarCubit>();
          return Scaffold(
            body: views[cubit.selectIndex],
            bottomNavigationBar: Container(
              decoration: BoxDecoration(
                color: kBackgroundColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 12.h),
                child: GNav(
                  onTabChange: (index) {
                    cubit.changeCurrentIndex(index);
                  },
                  tabBorderRadius: 10.r,
                  duration: Duration(milliseconds: 400),
                  gap: 5.w,
                  color: Colors.grey,
                  activeColor: Colors.white,
                  iconSize: 20.sp,
                  tabBackgroundColor: kprimaryColor,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
                  tabs: [
                    GButton(icon: Icons.home, text: 'Home'),
                    GButton(icon: Icons.store, text: 'Store'),
                    GButton(icon: Icons.shopping_cart, text: 'Cart'),
                    GButton(icon: Icons.favorite, text: 'Favorite'),
                    GButton(icon: Icons.person, text: 'Profile'),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
