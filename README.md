# Cycle Shop - Flutter Mobile App

A Flutter-based bike shopping mobile application for Android platform.

## Features

- Browse bikes by category (Mountain, Road, City, BMX, Electric, Kids)
- View detailed bike information
- Product ratings and reviews
- Color selection
- Modern and clean UI design
- Shopping cart functionality (UI ready)

## Design Reference

Based on the Figma design: [Online Bike Shopping App](https://www.figma.com/design/kMPleHfXp04TsVJ9KwNClK/Online-Bike-Shopping-App--Community-?node-id=0-1&p=f&t=k70q4IOIuXCqbNB5-0)

## Getting Started

### Prerequisites

- Flutter SDK (3.0.0 or higher)
- Android Studio / VS Code with Flutter plugins
- Android SDK (API level 21 or higher)

### Installation

1. Clone the repository
2. Install dependencies:
```bash
flutter pub get
```

3. Run the app:
```bash
flutter run
```

### Build for Android

```bash
flutter build apk --release
```

## Project Structure

```
lib/
├── main.dart              # App entry point
├── models/
│   └── bike_model.dart    # Bike data model
├── screens/
│   ├── home_screen.dart   # Main home screen
│   └── bike_detail_screen.dart  # Product detail screen
├── widgets/
│   ├── bike_card.dart     # Bike item card widget
│   └── category_chip.dart # Category filter chip widget
└── utils/
    └── sample_data.dart   # Sample bike data
```

## Technologies Used

- Flutter 3.38.7
- Dart 3.10.7
- Material Design
- Google Fonts (Poppins)
- Cached Network Image

## Color Scheme

- Primary: #2196F3 (Blue)
- Secondary: #FFC107 (Amber/Yellow)
- Background: #F5F5F5 (Light Gray)
- Text: #000000 (Black)

## Future Enhancements

- Backend integration for real product data
- User authentication
- Shopping cart functionality
- Payment integration
- Order history
- Push notifications
- Favorites/Wishlist persistence
