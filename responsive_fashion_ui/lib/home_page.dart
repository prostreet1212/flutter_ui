import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_fashion_ui/product.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectCategory = 0;
  final List<String> categories = [
    'Все',
    'Популярное',
    "Тренды",
    'Женская',
    'Мужская',
    'Детская',
    'Аксесуары',
    'Новая коллекция',
    'Распродажа',
  ];

  final List<Product> _products = [
    Product(
      'Red Dress',
      '49.50\$',
      'https://static.vecteezy.com/system/resources/thumbnails/045/761/404/small/a-gown-dress-isolated-on-transparent-background-png.png',
      4.5,
      Colors.pink.shade100,
    ),
    Product(
      'Blue Shirt',
      '49.49\$',
      'https://static.vecteezy.com/system/resources/thumbnails/067/856/459/small_2x/a-blue-shirt-with-long-sleeves-free-png.png',
      4.5,
      Colors.blue.shade100,
    ),
    Product(
      'Green Jacket',
      '49.49\$',
      'https://i.pinimg.com/originals/76/90/fe/7690fe8f0b87da74d3703825e049fd95.png',
      4.5,
      Colors.green.shade100,
    ),
    Product(
      'Yellow Skirt',
      '49.49\$',
      'https://rosepng.com/wp-content/uploads/2024/10/s11728_yellow_skirt_isolated_on_white_background_-stylize_20_ba5049a5-7cdc-4989-bc05-759256d2c29e_1-photoroom.png',
      4.5,
      Colors.yellow.shade100,
    ),
    Product(
      'Black Shoes',
      '49.49\$',
      'https://static.vecteezy.com/system/resources/previews/051/667/161/non_2x/pair-of-black-leather-shoes-png.png',
      4.5,
      Colors.grey.shade100,
    ),
    Product(
      'White  Hat',
      '49.49\$',
      'https://png.pngtree.com/png-clipart/20190920/original/pngtree-beautiful-white-cartoon-hat-png-image_4665787.jpg',
      4.5,
      Colors.pink.shade100,
    ),
    Product(
      'Purple Scarf',
      '49.49\$',
      'https://png.pngtree.com/png-clipart/20250428/original/pngtree-purple-scarf-png-image_20868089.png',
      4.5,
      Colors.purple.shade100,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          bool isMobile = constraints.maxWidth < 600;
          bool isTablet =
              constraints.maxWidth >= 600 && constraints.maxWidth < 1024;
          bool isDesktop =
              constraints.maxWidth >= 600 && constraints.maxWidth >= 1024;
          return CustomScrollView(
            slivers: [
              _buildAppBar(isMobile, isTablet),
              SliverToBoxAdapter(
                child: _buildHeroSection(isMobile, isTablet, isDesktop),
              ),
              SliverToBoxAdapter(child: SizedBox(height: 30)),
              SliverToBoxAdapter(child: _buildCatgories(isMobile)),
              _buildProductGrid(isMobile, isTablet, isDesktop),
              SliverToBoxAdapter(child: _buildPromotionSection(isMobile,isTablet)),
              SliverToBoxAdapter(child: SizedBox(height: 40,),),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pink,
        foregroundColor: Colors.white,
        child: Icon(Icons.shopping_cart),
        onPressed: () {},
      ),
    );
  }

  Widget _buildAppBar(bool isMobile, bool isTablet) {
    return SliverAppBar(
      expandedHeight: isMobile ? 60 : 80,
      pinned: true,
      floating: true,
      backgroundColor: Colors.white,
      elevation: 2,
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          padding: EdgeInsets.symmetric(horizontal: isMobile ? 16 : 28 /*40*/),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.shopping_bag,
                    color: Colors.pink,
                    size: isMobile ? 28 : 32,
                  ),
                  SizedBox(width: 8),
                  Text(
                    'FASHION',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: isMobile ? 20 : 24,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                    ),
                  ),
                ],
              ),
              if (!isMobile)
                Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Home',
                        style: TextStyle(
                          color: Colors.pink,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Shop',
                        style: TextStyle(
                          color: Colors.pink,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'About',
                        style: TextStyle(
                          color: Colors.pink,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Contact',
                        style: TextStyle(
                          color: Colors.pink,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),

              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.search, color: Colors.pink),
                  ),
                  if (!isMobile)
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.favorite_border, color: Colors.pink),
                    ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.shopping_cart_checkout,
                      color: Colors.pink,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeroSection(bool isMobile, bool isTablet, bool isDesktop) {
    return Container(
      height: isMobile ? 300 : (isTablet ? 400 : 500),
      //padding: EdgeInsets.symmetric(horizontal: isMobile?16:40),
      margin: EdgeInsets.symmetric(horizontal: isMobile ? 16 : 28),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.pink[500]!, Colors.purple[500]!],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          Positioned(
            left: isMobile ? 20 : 60,
            top: isMobile ? 40 : 80,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Summer',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: isMobile ? 32 : (isTablet ? 48 : 64),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Collection 2025',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: isMobile ? 24 : (isTablet ? 36 : 48),
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.pink,
                    padding: EdgeInsets.symmetric(
                      horizontal: isMobile ? 20 : 30,
                      vertical: isMobile ? 10 : 25,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Text(
                    'Shop Now',
                    style: TextStyle(
                      fontSize: isMobile ? 16 : 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          if (!isMobile)
            Positioned(
              right: 40,
              bottom: 0,
              child: Icon(
                Icons.checkroom,
                size: isDesktop ? 250 : 100,
                color: Colors.white.withValues(alpha: 0.3),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildCatgories(bool isMobile) {
    return Container(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: isMobile ? 16 : 28),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          bool isSelected = _selectCategory == index;
          return GestureDetector(
            onTap: () {
              setState(() {
                _selectCategory = index;
              });
            },
            child: Container(
              margin: EdgeInsets.only(right: 16),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                color: isSelected ? Colors.pink : Colors.grey.shade200,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Text(
                categories[index],
                style: TextStyle(
                  color: isSelected ? Colors.white : Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildProductGrid(bool isMobile, bool isTablet, bool isDesktop) {
    int crossAxisCount = isMobile ? 2 : (isTablet ? 3 : 4);
    //const EdgeInsets.symmetric(vertical: 8);
    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: isMobile ? 16 : 28),
      sliver: SliverGrid(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: isMobile ? 0.7 : (isTablet ? 0.75 : 0.8),
        ),
        delegate: SliverChildBuilderDelegate((context, index) {
          return _buildProductCard(_products[index], isMobile);
        }, childCount: _products.length),
      ),
    );
  }

  Widget _buildProductCard(Product product, bool isMobile) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: product.bgColor,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(16),
                    ),
                  ),
                  child: Center(
                    child: Image.network(product.image,
                      fit:BoxFit.contain,
                    height: isMobile?120:150,
                    errorBuilder: (context,error,stackTrace){
                      return    Center(
                        child: Icon(
                        Icons.checkroom,
                        size: isMobile ? 60 : 80,
                        color: Colors.white,
                        ),
                      );
                    },
                    ),

                  ),
                ),
                Positioned(
                  right: 8,
                  top: 8,
                  child: Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.favorite_border,
                      color: Colors.pink,
                      size: isMobile ? 20 : 24,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
              padding: EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(product.name,
                  style: TextStyle(
                    fontSize: isMobile?16:18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4,),
                Text(product.price,
                  style: TextStyle(
                    fontSize: isMobile?14:16,
                    color: Colors.pink,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4,),
                Row(
                  children: [
                    Icon(Icons.star,color: Colors.amber,size:isMobile?16:20,),
                    SizedBox(width: 4,),
                    Text(product.rating.toString(),style: TextStyle(
                      fontSize: isMobile?14:16,
                      fontWeight: FontWeight.bold,
                    ),)
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

 Widget _buildPromotionSection(bool isMobile,bool isTablet){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding:EdgeInsets.all(isMobile?30:50),
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.pink.shade400,Colors.purple.shade400,],
            begin: Alignment.topLeft,
        end: Alignment.bottomRight),
      ),
      //child: ,
    );
  }

}
