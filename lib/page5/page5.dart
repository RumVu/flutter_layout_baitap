import 'package:flutter/material.dart';

class Page5 extends StatefulWidget {
  const Page5({super.key});

  @override
  State<Page5> createState() => _Page5State();
}

class _Page5State extends State<Page5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F5F9),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              // Greeting + Cart icon
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Welcome back,",
                          style: TextStyle(fontSize: 14, color: Colors.black)),
                      SizedBox(height: 4),
                      Text("Samantha William",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Icon(Icons.shopping_cart_outlined),
                ],
              ),

              const SizedBox(height: 20),

              // Search bar
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Row(
                  children: [
                    Icon(Icons.search, color: Colors.grey),
                    SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Searching Item",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Icon(Icons.tune, color: Colors.orange),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // Banner
              Container(
                height: 160,
                decoration: BoxDecoration(
                  color: Colors.blue[300],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const BannerSlider(),
              ),
              const SizedBox(height: 20),

              // Category Grid
              GridView.count(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                crossAxisCount: 4,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                children: const [
                  CategoryIcon(
                    title: "Music",
                    imageUrl:
                        "https://cdn-icons-png.flaticon.com/512/727/727245.png",
                  ),
                  CategoryIcon(
                    title: "Property",
                    imageUrl:
                        "https://cdn-icons-png.flaticon.com/512/484/484167.png",
                  ),
                  CategoryIcon(
                    title: "Game",
                    imageUrl:
                        "https://cdn-icons-png.flaticon.com/512/1055/1055687.png",
                  ),
                  CategoryIcon(
                    title: "Gadget",
                    imageUrl:
                        "https://cdn-icons-png.flaticon.com/512/1048/1048953.png",
                  ),
                  CategoryIcon(
                    title: "Electronic",
                    imageUrl:
                        "https://cdn-icons-png.flaticon.com/512/3446/3446643.png",
                  ),
                  CategoryIcon(
                    title: "Property",
                    imageUrl:
                        "https://img.icons8.com/?size=100&id=ErXKPcLO7sA5&format=png&color=000000",
                  ),
                  CategoryIcon(
                    title: "Game",
                    imageUrl:
                        "https://cdn-icons-png.flaticon.com/512/1055/1055687.png",
                  ),
                  CategoryIcon(
                    title: "Book",
                    imageUrl:
                        "https://cdn-icons-png.flaticon.com/512/29/29302.png",
                  ),
                ],
              ),

              const SizedBox(height: 24),

              // Best Seller Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Best Seller",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.orange,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),

              const SizedBox(height: 16),

              // Horizontal list Best Seller
              SizedBox(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    ProductCard(title: "Plant"),
                    ProductCard(title: "Lamp"),
                    ProductCard(title: "Chair"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Category icon widget
class CategoryIcon extends StatelessWidget {
  final String title;
  final String imageUrl;

  const CategoryIcon({
    super.key,
    required this.title,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.blue[50],
            borderRadius: BorderRadius.circular(12),
          ),
          child: Image.network(imageUrl, width: 30, height: 30),
        ),
        const SizedBox(height: 6),
        Text(title, style: const TextStyle(fontSize: 12)),
      ],
    );
  }
}

// Product Card widget
class ProductCard extends StatelessWidget {
  final String title;

  const ProductCard({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        color: Colors.blue[300],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.image, size: 40, color: Colors.white),
          const SizedBox(height: 8),
          Text(title,
              style: const TextStyle(fontSize: 14, color: Colors.white)),
          const SizedBox(height: 6),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.star, size: 14, color: Colors.yellow),
              Text(" 5.0", style: TextStyle(color: Colors.white)),
            ],
          ),
        ],
      ),
    );
  }
}

//Banner Slider widget
class BannerSlider extends StatefulWidget {
  const BannerSlider({super.key});

  @override
  State<BannerSlider> createState() => _BannerSliderState();
}

class _BannerSliderState extends State<BannerSlider> {
  int _currentPage = 0;
  final PageController _pageController = PageController();

  final List<Color> _colors = [
    Colors.blue.shade300,
    Colors.green.shade300,
    Colors.orange.shade300,
    Colors.purple.shade300,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F5F9),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 140,
            child: PageView.builder(
              controller: _pageController,
              itemCount: _colors.length,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    color: _colors[index],
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: const Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.image, size: 60, color: Colors.white),
                        SizedBox(height: 8),
                        Text("Image Here",
                            style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),

          const SizedBox(height: 12),

          // Dots indicator
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(_colors.length, (index) {
              return AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                margin: const EdgeInsets.symmetric(horizontal: 4),
                width: _currentPage == index ? 10 : 8,
                height: 8,
                decoration: BoxDecoration(
                  color: _currentPage == index
                      ? Colors.orange
                      : Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(4),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
