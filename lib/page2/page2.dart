import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Icon(Icons.arrow_back),
              ),
            ),
            // Danh sách sản phẩm
            fruitItem("Orange", "\$15"),
            fruitItem("Apple", "\$20"),
            fruitItem("Banana", "\$5"),
            fruitItem("Mango", "\$15"),
            fruitItem("Orange", "\$10"),
          ],
        ),
      ),
    );
  }

  // Hàm tạo 1 item đơn giản
  Widget fruitItem(String name, String price) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: const Color.fromARGB(200, 44, 87, 27),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          const SizedBox(width: 16),

          // Nội dung
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 16),
                ),
                const SizedBox(height: 4),
                const Text(
                  "1000 ready stock",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                const SizedBox(height: 6),
                Text(
                  price,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),

          const Icon(Icons.favorite_border),
        ],
      ),
    );
  }
}
