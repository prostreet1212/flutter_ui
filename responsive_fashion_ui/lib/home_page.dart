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
    "Тренды"
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
      '49.49\$',
      'assets/images/red_dress.png',
      4.5,
      Colors.pink.shade100,
    ),
    Product(
      'Red Dress',
      '49.49\$',
      'assets/images/red_dress.png',
      4.5,
      Colors.pink.shade100,
    ),
    Product(
      'Red Dress',
      '49.49\$',
      'assets/images/red_dress.png',
      4.5,
      Colors.pink.shade100,
    ),
    Product(
      'Red Dress',
      '49.49\$',
      'assets/images/red_dress.png',
      4.5,
      Colors.pink.shade100,
    ),
    Product(
      'Red Dress',
      '49.49\$',
      'assets/images/red_dress.png',
      4.5,
      Colors.pink.shade100,
    ),
    Product(
      'Red Dress',
      '49.49\$',
      'assets/images/red_dress.png',
      4.5,
      Colors.pink.shade100,
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
              SliverToBoxAdapter(
                child: _buildProductGrid(isMobile, isTablet, isDesktop),
              ),
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
          colors: [Colors.pink[300]!, Colors.purple[300]!],
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
          childAspectRatio: isMobile?0.7:(isTablet?0.75:0.8),
        ),
        delegate: SliverChildBuilderDelegate((context,index){
          return _buildProductCard(_products[index],isMobile);
        },
        childCount: _products.length),
      ),
    );
  }
 Widget _buildProductCard(Product product,bool isMobile){
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Column(),
    );
 }

}
