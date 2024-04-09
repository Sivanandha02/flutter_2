import 'package:flutter/material.dart';
import 'package:flutter_2/model/model.dart';
import 'package:flutter_2/utils/mycolors.dart';
import 'package:flutter_2/utils/mytheme.dart';

class Listview_builder extends StatelessWidget {
  List<data> products = [
    data(name: "Good Day", price: 25, image: "assets/images/goodAY.jpg"),
    data(name: "Dark Fantasy", price: 40, image: "assets/images/dark.jpg"),
    data(name: "Milky bikies", price: 25, image: "assets/images/milkyyy.jpg"),
    data(name: "Arrowroot", price: 22, image: "assets/images/arrow.jpg"),
    data(name: "Malkist", price: 50, image: "assets/images/malkist.jpg"),
    data(name: "Krack Jack", price: 25, image: "assets/images/krack.jpg"),
    data(name: "Good Day", price: 25, image: "assets/images/goodAY.jpg"),
    data(name: "Good Day", price: 25, image: "assets/images/goodAY.jpg"),
    data(name: "Good Day", price: 25, image: "assets/images/goodAY.jpg"),
    data(name: "Good Day", price: 25, image: "assets/images/goodAY.jpg")
  ];
  //   {
  //     'name': "Good day",
  //     'price': 25,
  //     'pic': "assets/images/goodAY.jpg",
  //   },
  //   {
  //     'name': "Dark Fantasy",
  //     'price': 40,
  //     'pic': "assets/images/dark.jpg",
  //   },
  //   {
  //     'name': "milky bikies",
  //     'price': 30,
  //     'pic': "assets/images/milkyyy.jpg",
  //   },
  //   {
  //     'name': "Arrowroot",
  //     'price': 22,
  //     'pic': "assets/images/arrow.jpg",
  //   },
  //   {'name': "Malkist", 'price': 50, 'pic': "assets/images/malkist.jpg"},
  //   {
  //     'name': "Krack Jack",
  //     'price': 20,
  //     'pic': "assets/images/krack.jpg",
  //   }
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Products"),
          backgroundColor: MyColors.basicColor,
        ),
        body: ListView(
            children: products
                .map((product) => Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Card(
                        color: Colors.white,
                        child: Column(
                          children: [
                            SizedBox(
                                width: double.infinity,
                                height: 100,
                                child: Image.asset(
                                  product.image!,
                                  fit: BoxFit.cover,
                                )),
                            Text(
                              product.name!,
                              style: MyTextThemes.textHeading,
                            ),
                            Text(
                              '${product.price}',
                              style: MyTextThemes.bodyTextStyle,
                            )
                          ],
                        ),
                      ),
                    ))
                .toList()

            // body: ListView.builder(itemBuilder: (context, index) {
            //   return Card(
            //       child: ListTile(
            //     leading: Image.asset(products[index].image!),
            //     title: Text("${products[index].name}"),
            //     subtitle: Text('${products[index].price}'),
            //     trailing: Icon(Icons.favorite_border),
            //   ));
            // }),
            )
            );
  }
}
