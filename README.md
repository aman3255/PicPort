# PicPort - Flutter Mobile Application

A complete Flutter mobile application with login and home screens using BLoC pattern for state management.

## Features

- **Login Screen**: Email/password validation with specific criteria
- **Home Screen**: Display 10 images in ListView from API
- **BLoC Architecture**: Clean separation of business logic and UI
- **Form Validation**: Comprehensive email and password validation
- **Modern UI**: Beautiful design with Montserrat font
- **Error Handling**: Proper error states and user feedback

## Technical Stack

- **Framework**: Flutter/Dart
- **State Management**: flutter_bloc (BLoC pattern)
- **HTTP Client**: http package for API calls
- **Fonts**: google_fonts for Montserrat font
- **Architecture**: Clean architecture with separation of concerns

## Project Structure

```
lib/
├── bloc/
│   ├── auth/
│   │   ├── auth_bloc.dart
│   │   ├── auth_event.dart
│   │   └── auth_state.dart
│   └── home/
│       ├── home_bloc.dart
│       ├── home_event.dart
│       └── home_state.dart
├── models/
│   └── image_model.dart
├── repositories/
│   └── image_repository.dart
├── screens/
│   ├── login_screen.dart
│   └── home_screen.dart
├── utils/
│   └── validators.dart
├── widgets/
│   └── image_card.dart
└── main.dart
```

## Setup Instructions

### Prerequisites

- Flutter SDK (>=3.0.0)
- Dart SDK
- Android Studio / VS Code
- Android SDK (for Android builds)

### Installation

1. **Clone the repository**
   ```bash
   git clone <repository-url>
   cd picport
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the application**
   ```bash
   flutter run
   ```

### Validation Rules

#### Email Validation
- Must be a valid email format
- Required field

#### Password Validation
- Minimum 8 characters
- At least 1 uppercase letter
- At least 1 lowercase letter
- At least 1 digit
- At least 1 special character

### Demo Credentials

For testing purposes, you can use:
- **Email**: demo@example.com
- **Password**: Demo123!

## Building APK

### Debug APK
```bash
flutter build apk --debug
```

### Release APK
```bash
flutter build apk --release
```

The APK file will be generated at:
```
build/app/outputs/flutter-apk/app-release.apk
```

## Key Features Implementation

### 1. BLoC Pattern
- **AuthBloc**: Handles login authentication with validation
- **HomeBloc**: Manages image loading and state

### 2. Form Validation
- Real-time validation feedback
- Specific error messages for each validation rule
- Form submission only when all validations pass

### 3. Image Display
- Responsive image cards with proper aspect ratio
- Error handling for failed image loads
- Pull-to-refresh functionality

### 4. Navigation
- Seamless navigation between login and home screens
- Proper state management during navigation

## Dependencies

```yaml
dependencies:
  flutter:
    sdk: flutter
  flutter_bloc: ^8.1.3
  equatable: ^2.0.5
  http: ^1.1.0
  google_fonts: ^6.1.0
  cupertino_icons: ^1.0.2
```

## Testing

### Manual Testing
1. Launch the app
2. Try invalid email formats (should show validation error)
3. Try invalid passwords (should show specific validation errors)
4. Use demo credentials to login
5. Verify images load on home screen
6. Test pull-to-refresh functionality
7. Test error states by disconnecting internet

### Unit Testing
```bash
flutter test
```

## Troubleshooting

### Common Issues

1. **Dependencies not found**
   ```bash
   flutter clean
   flutter pub get
   ```

2. **Build errors**
   ```bash
   flutter clean
   flutter pub get
   flutter run
   ```

3. **APK build issues**
   - Ensure Android SDK is properly configured
   - Check `android/app/build.gradle` configuration
   - Verify signing configuration

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Add tests if applicable
5. Submit a pull request

## License

This project is licensed under the MIT License.

## Support

For support and questions, please open an issue in the repository. 