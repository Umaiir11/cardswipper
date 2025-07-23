Card Swiper App 🌟
A Flutter-based mobile application inspired by popular swipe-based interfaces, allowing users to browse and interact with user profiles by swiping left to like or right to dislike. Built with Flutter and GetX for efficient state management, this app features a sleek UI, smooth animations, and an undo functionality for swipes.
📋 Table of Contents

Features
Screenshots
Getting Started
Prerequisites
Installation


Usage
Project Structure
Contributing
License

Features 🚀

Swipe-Based Navigation: Swipe left to like or right to dislike user profiles, with smooth card animations. 🖐️
Undo Functionality: Rewind the last swipe to undo likes or dislikes. ⏪
Responsive UI: Modern, Tinder-inspired design with profile cards displaying name, age, title, and location. 🎨
State Management: Powered by GetX for efficient and reactive state handling. ⚡
Profile Management: Displays a list of sample user profiles with high-quality images from Unsplash. 🖼️
Interactive Feedback: Snackbars provide instant feedback for likes, dislikes, and rewinds. 🔔
Reset Option: Restart the swiping experience when profiles are exhausted. 🔄

Screenshots 📸



Home Screen
No More Profiles
Profile Card









Note: Screenshots are placeholders. Replace with actual images in your repository.

Getting Started 🛠️
Prerequisites

Flutter SDK: Version 3.0.0 or higher. 🐦
Dart: Version 2.17.0 or higher.
IDE: Android Studio, VS Code, or any Flutter-compatible IDE.
Dependencies:
get: ^4.6.6 for state management.
A card swiping package (refer to pubspec.yaml).
cupertino_icons: ^1.0.2 for icons.



Installation

Clone the Repository:
git clone https://github.com/your-username/card-swiper-app.git
cd card-swiper-app


Install Dependencies:
flutter pub get


Run the App:
flutter run


Build for Release (optional):
flutter build apk



Ensure you have a connected device or emulator running.
Usage 🎮

Launch the App: Open the app to see the "Discover" screen with a stack of profile cards. 📱
Swipe Profiles:
Swipe left to like a profile (adds to liked profiles). ❤️
Swipe right to dislike a profile (adds to disliked profiles). ❌


Action Buttons:
Rewind (⏪): Undo the last swipe.
Dislike (❌): Swipe right to pass on a profile.
Like (❤️): Swipe left to like a profile.
Super Like (⭐): Triggers a like action (customizable for future enhancements).


Reset: When no profiles remain, tap "Start Over" to reset the app state. 🔄
Feedback: Snackbars display "Liked!", "Disliked", or "Rewound" messages for user actions. 🔔

Project Structure 📂
card-swiper-app/
├── lib/
│   ├── main.dart          # Entry point and app setup
│   ├── models/           # Data models (e.g., UserProfile)
│   ├── controllers/      # GetX controller for state management
│   ├── views/            # UI components (CardSwiperView, ProfileCard, ActionButton)
├── pubspec.yaml          # Dependencies and project configuration
├── README.md             # Project documentation
├── screenshots/          # Placeholder for app screenshots

Contributing 🤝
Contributions are welcome! To contribute:

Fork the repository. 🍴
Create a feature branch (git checkout -b feature/your-feature).
Commit your changes (git commit -m 'Add your feature').
Push to the branch (git push origin feature/your-feature).
Open a pull request. 📬

Please ensure your code follows Flutter best practices and includes relevant tests.
License 📜
This project is licensed under the MIT License - see the LICENSE file for details.

Built with ❤️ using Flutter. Happy swiping!
<img width="1080" height="2400" alt="Screenshot_20250723_115143" src="https://github.com/user-attachments/assets/37069087-1a52-4933-bcc8-5d1ae0c87120" />
<img width="1080" height="2400" alt="Screenshot_20250723_115041" src="https://github.com/user-attachments/assets/e3b6e608-1b29-4f38-82dc-ad73fb6de134" />
<img width="1080" height="2400" alt="Screenshot_20250723_114910" src="https://github.com/user-attachments/assets/03f6f670-f6be-40d1-806f-612cb47e5af7" />

