
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/controllers/productcontroller.dart';
import 'package:mobile/utils/colors.dart';
import 'package:mobile/views/widgets/appBarWidget.dart';
import 'package:mobile/views/widgets/appDrawer.dart';
import 'package:mobile/views/widgets/textFieldWidget.dart';
import 'package:mobile/views/widgets/textWidget.dart';

class ProductsHome extends StatelessWidget {
  const ProductsHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ProductController productController =Get.put(ProductController());
    return Scaffold(
      backgroundColor: UiColors.productHomeBgClr,
      appBar: AppBarWidget(),
      drawer: const AppDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              const SizedBox(height: 10,),
              const  TextFieldWidget(hintTxt: "Search",txtSize: 20,hintTxtSize: 20,),
              const SizedBox(height: 20,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("Our Products",
                    style: TextStyle(color: UiColors.txtClr,fontSize: 26,fontWeight: FontWeight.bold),),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
