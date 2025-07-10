import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 246, 246, 247),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Balance + avatar circle
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Your Balance",
                          style: TextStyle(fontSize: 14, color: Colors.black)),
                      SizedBox(height: 5),
                      Text(
                        "\$1,700.00",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                  Container(
                    width: 40,
                    height: 70,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: const Color.fromARGB(200, 44, 87, 27),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // Promo card
              Container(
                width: double.infinity,
                height: 250,
                padding: const EdgeInsets.only(left: 20, bottom: 20),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(200, 44, 87, 27),
                  borderRadius: BorderRadius.circular(20),
                ),
                alignment: Alignment.bottomLeft,
                child: const Text(
                  "Buy Orange 10 Kg\nGet discount 25%",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),

              const SizedBox(height: 20),

              const Text(
                "For you",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),

              const SizedBox(height: 10),

              // 4 food category items
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  childAspectRatio: 1,
                  children: const [
                    CategoryItem(
                      label: "Fruit",
                      imageUrl:
                          "https://cdn-icons-png.flaticon.com/512/415/415733.png",
                    ),
                    CategoryItem(
                      label: "Vegetable",
                      imageUrl:
                          "https://cdn-icons-png.flaticon.com/512/590/590685.png",
                    ),
                    CategoryItem(
                      label: "Cookies",
                      imageUrl:
                          "https://img.icons8.com/?size=100&id=JvnHcj2IohPJ&format=png&color=000000",
                    ),
                    CategoryItem(
                      label: "Meat",
                      imageUrl:
                          "https://img.icons8.com/?size=100&id=70439&format=png&color=000000",
                    ),
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

class CategoryItem extends StatelessWidget {
  final String label;
  final String imageUrl;

  const CategoryItem({
    super.key,
    required this.label,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.all(12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(imageUrl, width: 50, height: 50),
          const SizedBox(height: 10),
          Text(
            label,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    );
  }
}
