import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../utils/colors.dart';

class AppBarWidget extends StatelessWidget with PreferredSizeWidget {

//PreferredSizeWidget is used to set appbar height
  final VoidCallback? iconFunction;
  AppBarWidget({Key? key,this.iconFunction,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      // New parameter:
      //scrolledUnderElevation: 0,
      titleSpacing: 0,
      leading:IconButton(icon: const ImageIcon(AssetImage('assets/images/img.png'),color: UiColors.appBarIconClr,),
        onPressed: ()=>Scaffold.of(context).openDrawer(),),
      actions: [
        Stack(
          children: [
            IconButton(
              icon: const ImageIcon(AssetImage('assets/images/cartIcon.png'),color: UiColors.appBarIconClr,size: 28,),
              onPressed: iconFunction,
            ),
            /* Positioned(
                right: 8,
                top: 5,
                child: cartController.itemsCount.value==0 ? Container()
                    :Container(
                  height: 15,
                  width: 15,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.iconBadgeClr,

                  ),
                  child: Center(child: Text('${cartController.itemsCount.value}',style: const TextStyle(fontSize: 12),)),
                )
            ),*/
          ],
        )
      ],
      iconTheme: const IconThemeData(
        color: UiColors.appBarIconClr,
      ),
      backgroundColor: UiColors.appBarBgClr,
    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}