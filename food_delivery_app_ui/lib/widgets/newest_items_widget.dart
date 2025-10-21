import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class NewestItemsWidget extends StatelessWidget {
  const NewestItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
          padding: EdgeInsetsGeometry.symmetric(vertical: 10,horizontal: 10),
      child: Column(
        children: [
         // for(int i=0;i<10;i++)
          Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
          child: Container(
            width: 380,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow:  [
                BoxShadow(
                    color: Colors.grey.withValues(alpha: 0.5),
                  spreadRadius: 3,
                  blurRadius: 10,
                  offset: Offset(0, 3),
                ),
              ]
            ),
            child: Row(
              children: [
                InkWell(
                  onTap: (){

                  },
                  child: Container(
                    alignment: Alignment.center,
                    child: Image.asset('images/pizza.png',height: 120,width: 150,),
                  ),
                ),
                Container(
                  width: 190,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('Пицца',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Text('Пеперони',
                        style: TextStyle(
                            fontSize: 16,

                        ),
                      ),
                      RatingBar.builder(
                        initialRating: 4,
                          minRating: 1,
                          direction: Axis.horizontal,
                          itemCount: 5,
                          itemSize: 18,
                          itemPadding: EdgeInsets.symmetric(horizontal: 4),
                          onRatingUpdate: (index){},
                        itemBuilder: (BuildContext context, int index) {
                          return Icon(Icons.star,color: Colors.red,);
                        }, ),
                      Text('250 руб',style: TextStyle(
                        fontSize: 20,
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                      ),

                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.favorite_border,
                        color: Colors.red,
                        size: 26,),
                      Icon(CupertinoIcons.cart,
                        color: Colors.red,
                        size: 26,),
                    ],
                  ),
                ),
              ],
            ),
          ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Container(
              width: 380,
              height: 150,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow:  [
                    BoxShadow(
                      color: Colors.grey.withValues(alpha: 0.5),
                      spreadRadius: 3,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    ),
                  ]
              ),
              child: Row(
                children: [
                  InkWell(
                    onTap: (){

                    },
                    child: Container(
                      alignment: Alignment.center,
                      child: Image.asset('images/burger.png',height: 120,width: 150,),
                    ),
                  ),
                  Container(
                    width: 190,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('Гамбургер',
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        Text('Вкусный бургер',
                          style: TextStyle(
                            fontSize: 16,

                          ),
                        ),
                        RatingBar.builder(
                          initialRating: 4,
                          minRating: 1,
                          direction: Axis.horizontal,
                          itemCount: 5,
                          itemSize: 18,
                          itemPadding: EdgeInsets.symmetric(horizontal: 4),
                          onRatingUpdate: (index){},
                          itemBuilder: (BuildContext context, int index) {
                            return Icon(Icons.star,color: Colors.red,);
                          }, ),
                        Text('250 руб',style: TextStyle(
                          fontSize: 20,
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                        ),

                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.favorite_border,
                          color: Colors.red,
                          size: 26,),
                        Icon(CupertinoIcons.cart,
                          color: Colors.red,
                          size: 26,),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Container(
              width: 380,
              height: 150,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow:  [
                    BoxShadow(
                      color: Colors.grey.withValues(alpha: 0.5),
                      spreadRadius: 3,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    ),
                  ]
              ),
              child: Row(
                children: [
                  InkWell(
                    onTap: (){

                    },
                    child: Container(
                      alignment: Alignment.center,
                      child: Image.asset('images/drink.png',height: 120,width: 150,),
                    ),
                  ),
                  Container(
                    width: 190,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('Кола',
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        Text('Пепси кола',
                          style: TextStyle(
                            fontSize: 16,

                          ),
                        ),
                        RatingBar.builder(
                          initialRating: 4,
                          minRating: 1,
                          direction: Axis.horizontal,
                          itemCount: 5,
                          itemSize: 18,
                          itemPadding: EdgeInsets.symmetric(horizontal: 4),
                          onRatingUpdate: (index){},
                          itemBuilder: (BuildContext context, int index) {
                            return Icon(Icons.star,color: Colors.red,);
                          }, ),
                        Text('250 руб',style: TextStyle(
                          fontSize: 20,
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                        ),

                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.favorite_border,
                          color: Colors.red,
                          size: 26,),
                        Icon(CupertinoIcons.cart,
                          color: Colors.red,
                          size: 26,),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),),
    );
  }
}
