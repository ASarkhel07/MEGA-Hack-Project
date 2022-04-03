import 'package:flutter/material.dart';
import 'package:tracer/constants.dart';
import 'package:tracer/custom/BorderBox.dart';
import 'package:tracer/widget_functions.dart';
import 'package:tracer/sample_data.dart';
import 'package:tracer/custom_functions.dart';

import '../custom/optionbutton.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final ThemeData themeData = Theme.of(context);
    const double padding = 25;
    const sidePadding = EdgeInsets.symmetric(horizontal: padding);
  
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: size.width,
          height: size.height,
           child: Stack(
             children: [
               Column(
            crossAxisAlignment: CrossAxisAlignment.start,
             children: [
              addVerticalSpace(padding), 
              Padding(
                padding: sidePadding,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Borderbox(
                      height: 50,
                      width: 50,
                      child: Icon(Icons.menu,color: colorBlack,),
                      padding: EdgeInsets.all(4),
                    ),
                    Borderbox(
                      height: 50,
                      width: 50,
                      child: Icon(Icons.settings, color: colorBlack,),
                      padding: EdgeInsets.all(4),
                    ),
                  ], 
                ),
              ),
              addVerticalSpace(padding),
              Padding(
                padding: sidePadding,
                child: Text("City", style: themeData.textTheme.bodyText2,),
              ),
              addVerticalSpace(10),
              Padding(
                padding: sidePadding,
                child: Text(
                  "South Brunswick",
                  style: themeData.textTheme.headline1,
                ),
              ),
              const Padding(
                padding: sidePadding,
                child: Divider(
                  height: 25,
                  color: colorGrey,
                )),
               addVerticalSpace(10),
               SingleChildScrollView(
                 scrollDirection: Axis.horizontal,
                 child: Row(
                   children: const 
                   ["<ETA: 15", "Bus Driver", "2.00 Miles", ">2.00 mi"]
                      .map((filter) => ChoiceOption(text: filter)).toList(),
                   ),
               ),
               addVerticalSpace(10),
               Expanded(
                 child: Padding(
                   padding: sidePadding,
                   child: ListView.builder(
                    itemCount: reData.length,
                     itemBuilder: (context,index ){
                       return RealEstateItem(itemData: reData[index]);
                     }),
                 ),
               ) 
             ],
           ),
           Positioned(
             bottom: 20,
             width: size.width,
             child: Center(
               child: OptionButton(
                  icon: Icons.map_rounded, 
                  text: "Map View",
                  width: size.width*0.35,
               ),
           ))
             ]
           )
        ),
      ),
    );
  }
}

class ChoiceOption extends StatelessWidget {

  final String text;

  const ChoiceOption({Key? key,  required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: colorGrey.withAlpha(25) 
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 13 ),
      margin: const EdgeInsets.only(left: 25),
      child: Text(text,style:  themeData.textTheme.headline5,),
    );
  }
}

class RealEstateItem extends StatelessWidget {

  final dynamic itemData;

  const RealEstateItem({Key? key, @required this.itemData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(25.0),
                child: Image.asset("test")),
              const Positioned(
                top: 15,
                right: 15,
                child: Borderbox(
                  width: 50,
                  height: 50,
                  padding: EdgeInsets.all(15),
                  child: Icon(Icons.favorite_border, color: colorBlack,),
              ),
              )
            ],
          ),
          addVerticalSpace(15),
          Row(
            children: [
              Text(formatCurrency(itemData["amount"]), style: themeData.textTheme.headline1,),
              addHorizontalSpace(10),
              Text(
                "${itemData["address"]}",
                style: themeData.textTheme.bodyText2
              )
            ],
          ),
          addVerticalSpace(10),
          Text(
            "${itemData["bedrooms"]} bedrooms / ${itemData["bathrooms"]} bathrooms / ${itemData["area"]} sqft",
            style: themeData.textTheme.headline5,
          )
        ],
      ),
    );
  }
}