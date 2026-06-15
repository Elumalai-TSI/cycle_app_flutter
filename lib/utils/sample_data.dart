import '../models/bike_model.dart';

List<Bike> getSampleBikes() {
  return [
    Bike(
      id: '1',
      name: 'Mountain Bike Pro',
      brand: 'Trek',
      price: 599.99,
      image: 'https://images.unsplash.com/photo-1576435728678-68d0fbf94e91?w=400',
      description: 'Professional mountain bike with advanced suspension',
      rating: 4.5,
      colors: ['Black', 'Red', 'Blue'],
      category: 'Mountain',
    ),
    Bike(
      id: '2',
      name: 'Road Racer X',
      brand: 'Giant',
      price: 899.99,
      image: 'https://images.unsplash.com/photo-1485965120184-e220f721d03e?w=400',
      description: 'Lightweight road bike for speed enthusiasts',
      rating: 4.8,
      colors: ['White', 'Yellow', 'Green'],
      category: 'Road',
    ),
    Bike(
      id: '3',
      name: 'City Cruiser',
      brand: 'Specialized',
      price: 399.99,
      image: 'https://images.unsplash.com/photo-1532298229144-0ec0c57515c7?w=400',
      description: 'Comfortable bike for daily city commuting',
      rating: 4.2,
      colors: ['Silver', 'Black'],
      category: 'City',
    ),
    Bike(
      id: '4',
      name: 'BMX Stunt Pro',
      brand: 'Mongoose',
      price: 299.99,
      image: 'https://images.unsplash.com/photo-1507035895480-2b3156c31fc8?w=400',
      description: 'Durable BMX bike for tricks and stunts',
      rating: 4.6,
      colors: ['Orange', 'Black', 'Purple'],
      category: 'BMX',
    ),
    Bike(
      id: '5',
      name: 'Electric Hybrid',
      brand: 'Cannondale',
      price: 1299.99,
      image: 'https://images.unsplash.com/photo-1571068316344-75bc76f77890?w=400',
      description: 'Electric-assisted hybrid bike for longer rides',
      rating: 4.9,
      colors: ['Matte Black', 'Silver'],
      category: 'Electric',
    ),
    Bike(
      id: '6',
      name: 'Kids Adventure',
      brand: 'Schwinn',
      price: 179.99,
      image: 'https://images.unsplash.com/photo-1511994298241-608e28f14fde?w=400',
      description: 'Safe and fun bike for children',
      rating: 4.4,
      colors: ['Pink', 'Blue', 'Red'],
      category: 'Kids',
    ),
  ];
}

List<String> getCategories() {
  return ['All', 'Mountain', 'Road', 'City', 'BMX', 'Electric', 'Kids'];
}
