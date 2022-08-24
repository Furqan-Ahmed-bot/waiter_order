import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ts_app_development/DataLayer/GetX/cartController.dart';
import 'package:ts_app_development/DataLayer/Models/Orders/StarterData.dart';
import 'package:ts_app_development/UserControls/MasterWidget/ConfirmOrderDetailWidget.dart';

class OrderListScreen extends StatefulWidget {
  const OrderListScreen({Key? key}) : super(key: key);

  @override
  State<OrderListScreen> createState() => _OrderListScreenState();
}

class _OrderListScreenState extends State<OrderListScreen> {

  final CartController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Order Detail',style: TextStyle(color: Colors.white),),),
      body: Column(
        children: [
          // Obx(() =>
          //     SizedBox(
          //       height: 600,
          //       child: ListView.builder(
          //
          //         itemCount: controller.products.length,
          //         itemBuilder: (context , index) =>
          //             OrderListCard(
          //               controller: controller,
          //               product: controller.products.keys.toList()[index],
          //               quantity: controller.products.values.toList()[index],
          //               index: index,
          //             ),
          //       ),
          //     ),
          // ),
          // SizedBox(height: 40,),
          // Text('Order Detail',style: TextStyle(color: Colors.black,fontSize: 24),textAlign: TextAlign.center,),
          SizedBox(height: 20,),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Card(
                  child: GestureDetector(
                    onTap: (){
                      Get.to(ConfirmOrderWidget());
                    },
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xFFFFFFFF),
                        ),
                        height: 130,
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                  const EdgeInsets.only(top: 20,left: 20,),
                                  child: Container(
                                    child: Text(
                                      'Order No: 1234',
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 24),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      20, 10, 40, 0),
                                  child: Container(
                                    child: Text(
                                      'Table No: 210',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 24),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                          ],
                        )
                    ),
                  ),
                  elevation: 10,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class OrderListCard extends StatefulWidget {

  final CartController controller;
  final StarterData product;
  final int quantity;
  final int index;
  const OrderListCard({ Key? key, required this.controller, required this.product, required this.quantity, required this.index,}) : super(key: key);

  @override
  State<OrderListCard> createState() => _OrderListCardState();
}

class _OrderListCardState extends State<OrderListCard> {

  @override
  Widget build(BuildContext context) {

    return
      Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(widget.product.image,height: 70,width: 70,),
            Expanded(child: Text(widget.product.itemName)),
          ]
      );

  }
}
