import 'package:flutter/material.dart';
import '../models/bike_model.dart';
import '../utils/sample_data.dart';
import '../widgets/bike_card.dart';
import '../widgets/category_chip.dart';
import 'bike_detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedCategory = 'All';
  List<Bike> bikes = getSampleBikes();
  List<Bike> filteredBikes = [];

  @override
  void initState() {
    super.initState();
    filteredBikes = bikes;
  }

  void filterBikes(String category) {
    setState(() {
      selectedCategory = category;
      if (category == 'All') {
        filteredBikes = bikes;
      } else {
        filteredBikes = bikes.where((bike) => bike.category == category).toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'Cycle Shop',
          style: TextStyle(
            color: Colors.black87,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Semantics(
            label: 'Search bikes',
            button: true,
            child: IconButton(
              icon: const Icon(Icons.search, color: Colors.black87),
              onPressed: () {},
            ),
          ),
          Semantics(
            label: 'Shopping cart',
            button: true,
            child: IconButton(
              icon: const Icon(Icons.shopping_cart_outlined, color: Colors.black87),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: SizedBox(
              height: 40,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemCount: getCategories().length,
                itemBuilder: (context, index) {
                  final category = getCategories()[index];
                  return CategoryChip(
                    label: category,
                    isSelected: selectedCategory == category,
                    onTap: () => filterBikes(category),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              'Featured Bikes',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          ),
          Expanded(
            child: filteredBikes.isEmpty
                ? Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.pedal_bike,
                          size: 80,
                          color: Colors.grey[400],
                        ),
                        const SizedBox(height: 16),
                        Text(
                          'No bikes found',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[700],
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Try selecting a different category',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF757575),
                          ),
                        ),
                      ],
                    ),
                  )
                : GridView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.7,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                    ),
                    itemCount: filteredBikes.length,
                    itemBuilder: (context, index) {
                      return BikeCard(
                        bike: filteredBikes[index],
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  BikeDetailScreen(bike: filteredBikes[index]),
                            ),
                          );
                        },
                      );
                    },
                  ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xFF2196F3),
        unselectedItemColor: Colors.grey,
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
