import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_2/utils/mycolors.dart';
import 'package:flutter_2/model/model.dart';
import 'package:flutter_2/utils/mytheme.dart';

class ListView_separated extends StatelessWidget {
  var datas = [
    data(
        name: "Apple",
        image: "assets/icons/3316506_apples_icon_maca_apple_fruit.png",
        price: 34),
    data(
        name: "Plum",
        image: "assets/icons/3316494_icon_plum_fruit_plums_ameixa.png",
        price: 40),
    data(
        name: "Pineapple",
        image:
            "assets/icons/3316495_icon_abacaxi_pineapples_fruit_pineapple.png",
        price: 34),
    data(
        name: "Avocado",
        image: "assets/icons/3316496_fruit_avocado_icon_abacate_avocados.png",
        price: 34),
    data(
        name: "Grape",
        image: "assets/icons/3316497_uvas_fruit_icon_grap_grape_graps.png",
        price: 34),
    data(
        name: "strawberries",
        image:
            "assets/icons/3316501_fruit_strawberries_morango_strawberry_icon.png",
        price: 40),
    data(
        name: "pears",
        image: "assets/icons/3316500_pear_pears_icon_pera_fruit.png",
        price: 40),
    data(
        name: "mango",
        image: "assets/icons/3316505_manga_mangos_icon_fruit_mango.png",
        price: 40),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fruits For YOu  "),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.green[300],
            child: Icon(Icons.add),
          ),
          PopupMenuButton(itemBuilder: (Context) {
            return [
              const PopupMenuItem(child: Text('Settings')),
              const PopupMenuItem(child: Text('Privacy Policy'))
            ];
          })
        ],
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(12.8),
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3C_KnDYZYq2PoBtEQvPWiy0N2XWSNM_qtnw&s")),
                    color: Colors
                        .primaries[Random().nextInt(Colors.primaries.length)],
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        topLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('${datas[index].image}'),
                    Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            datas[index].name!,
                            style: MyTextThemes.textHeading,
                          ),
                          Text(
                            '\$${datas[index].price}',
                            style: MyTextThemes.bodyTextStyle,
                          )
                        ]),
                    Icon(Icons.shopping_cart)
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (context, index) {
            if (index % 4 == 0) {
              return Divider(
                thickness: 2,
                color: MyColors.basicColor,
              );
            } else {
              return Container();
            }
          },
          itemCount: 10),
    );
  }
}
