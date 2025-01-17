import 'package:flutter/material.dart';
import 'package:ecommerce/components/default_button.dart';
import 'package:ecommerce/models/Product.dart';
import 'package:ecommerce/size_config.dart';
import 'package:get/get.dart';

import '../details_controller.dart';
import 'color_dots.dart';
import 'product_description.dart';
import 'top_rounded_container.dart';
import 'product_images.dart';

final controller = Get.put(DetailController());

class Body extends StatelessWidget {
  final Product product;

  const Body({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ListView(
                  children: [
                    ProductImages(product: product),
                    TopRoundedContainer(
                      color: Colors.white,
                      child: Column(
                        children: [
                          ProductDescription(
                            product: product,
                            pressOnSeeMore: () {},
                          ),
                          TopRoundedContainer(
                            color: Color(0xFFF6F7F9),
                            child: Column(
                              children: [
                                ColorDots(product: product),
                                TopRoundedContainer(
                                  color: Colors.white,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: SizeConfig.screenWidth * 0.15,
                                      right: SizeConfig.screenWidth * 0.15,
                                      bottom: getProportionateScreenWidth(40),
                                      top: getProportionateScreenWidth(15),
                                    ),
                                    child: DefaultButton(
                                      text: "Add To Cart",
                                      press: () {},
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
        
  }
}
