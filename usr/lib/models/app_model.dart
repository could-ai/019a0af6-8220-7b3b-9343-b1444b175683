class AppModel {
  final String id;
  final String name;
  final String icon;
  final String description;
  final double rating;
  final int downloads;
  final String category;
  final String developer;
  final double price;
  final List<String> screenshots;

  const AppModel({
    required this.id,
    required this.name,
    required this.icon,
    required this.description,
    required this.rating,
    required this.downloads,
    required this.category,
    required this.developer,
    required this.price,
    required this.screenshots,
  });

  factory AppModel.fromJson(Map<String, dynamic> json) {
    return AppModel(
      id: json['id'],
      name: json['name'],
      icon: json['icon'],
      description: json['description'],
      rating: json['rating'].toDouble(),
      downloads: json['downloads'],
      category: json['category'],
      developer: json['developer'],
      price: json['price'].toDouble(),
      screenshots: List<String>.from(json['screenshots']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'icon': icon,
      'description': description,
      'rating': rating,
      'downloads': downloads,
      'category': category,
      'developer': developer,
      'price': price,
      'screenshots': screenshots,
    };
  }
}

// Sample data for demonstration
List<AppModel> sampleApps = [
  AppModel(
    id: '1',
    name: 'Social Connect',
    icon: 'https://via.placeholder.com/100x100.png?text=SC',
    description: 'Connect with friends and family worldwide. Share photos, videos, and messages in real-time.',
    rating: 4.5,
    downloads: 1000000,
    category: 'Social',
    developer: 'TechConnect Inc.',
    price: 0.0,
    screenshots: [
      'https://via.placeholder.com/300x600.png?text=Screen1',
      'https://via.placeholder.com/300x600.png?text=Screen2',
    ],
  ),
  AppModel(
    id: '2',
    name: 'FitTracker Pro',
    icon: 'https://via.placeholder.com/100x100.png?text=FT',
    description: 'Track your workouts, monitor your health, and achieve your fitness goals.',
    rating: 4.2,
    downloads: 500000,
    category: 'Health & Fitness',
    developer: 'HealthTech Corp.',
    price: 2.99,
    screenshots: [
      'https://via.placeholder.com/300x600.png?text=Screen1',
      'https://via.placeholder.com/300x600.png?text=Screen2',
    ],
  ),
  AppModel(
    id: '3',
    name: 'Music Player Plus',
    icon: 'https://via.placeholder.com/100x100.png?text=MP',
    description: 'Stream millions of songs, create playlists, and discover new music.',
    rating: 4.7,
    downloads: 2000000,
    category: 'Music',
    developer: 'AudioStream Ltd.',
    price: 4.99,
    screenshots: [
      'https://via.placeholder.com/300x600.png?text=Screen1',
      'https://via.placeholder.com/300x600.png?text=Screen2',
    ],
  ),
  AppModel(
    id: '4',
    name: 'TaskMaster',
    icon: 'https://via.placeholder.com/100x100.png?text=TM',
    description: 'Organize your tasks, set reminders, and boost your productivity.',
    rating: 4.0,
    downloads: 750000,
    category: 'Productivity',
    developer: 'Efficiency Apps',
    price: 0.0,
    screenshots: [
      'https://via.placeholder.com/300x600.png?text=Screen1',
      'https://via.placeholder.com/300x600.png?text=Screen2',
    ],
  ),
  AppModel(
    id: '5',
    name: 'WeatherWise',
    icon: 'https://via.placeholder.com/100x100.png?text=WW',
    description: 'Get accurate weather forecasts and alerts for your location.',
    rating: 4.3,
    downloads: 1500000,
    category: 'Weather',
    developer: 'ClimateTech',
    price: 0.0,
    screenshots: [
      'https://via.placeholder.com/300x600.png?text=Screen1',
      'https://via.placeholder.com/300x600.png?text=Screen2',
    ],
  ),
];