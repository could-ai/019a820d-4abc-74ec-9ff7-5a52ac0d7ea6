import 'package:flutter/material.dart';
import '../models/hotel_model.dart';
import '../widgets/hotel_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Hotel> hotels = [
    Hotel(
      name: 'Grand Hyatt',
      location: 'New York, USA',
      price: 250,
      rating: 4.5,
      imageUrl: 'https://images.unsplash.com/photo-1566073771259-6a8506099945?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80',
      description: 'A luxurious hotel located in the heart of New York City, offering stunning views and world-class amenities.',
    ),
    Hotel(
      name: 'The Ritz-Carlton',
      location: 'Paris, France',
      price: 450,
      rating: 4.8,
      imageUrl: 'https://images.unsplash.com/photo-1542314831-068cd1dbb5eb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80',
      description: 'Experience Parisian elegance at The Ritz-Carlton, where timeless luxury and impeccable service await.',
    ),
    Hotel(
      name: 'Four Seasons',
      location: 'Bora Bora, French Polynesia',
      price: 800,
      rating: 4.9,
      imageUrl: 'https://images.unsplash.com/photo-1582719508461-905c673771fd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1925&q=80',
      description: 'Escape to a tropical paradise at the Four Seasons in Bora Bora, with overwater bungalows and crystal-clear waters.',
    ),
     Hotel(
      name: 'Burj Al Arab',
      location: 'Dubai, UAE',
      price: 1500,
      rating: 5.0,
      imageUrl: 'https://images.unsplash.com/photo-1571003123894-1f0594d2b5d9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1949&q=80',
      description: 'The iconic sail-shaped silhouette of Burj Al Arab Jumeirah is more than just a stunning hotel, it is a symbol of modern Dubai.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Book Your Hotel'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: hotels.length,
        itemBuilder: (context, index) {
          return HotelCard(hotel: hotels[index]);
        },
      ),
    );
  }
}
