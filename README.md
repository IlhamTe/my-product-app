# My Product App
This repository contains a mini project developed as part of the technical test for [SERA ASTRA Company](https://www.sera.astra.co.id/). 
The project is built adhering to the principles of clean architecture and clean code, emphasizing maintainability and scalability. 
The structure of the project reflects that of a large-scale, complex application intended for long-term development with a team.

# 🤖 IDE

Suggested IDE is Android Studio because it has excellent flutter support, refactoring capabilities &
plugins.

# 💻 Setup

- Install Flutter and Android Studio.
- This project use **3.16.8** Flutter SDK Version
- Run build_runner command `flutter pub run build_runner build --delete-conflicting-outputs
  ` (if needed).

# 📘 File structure

Root folders for development

    ├── android                 # Android related files
    ├── assets                  # Fonts, icons, images
    ├── ios                     # iOS related files
    ├── lib                     # Flutter source files
    ├── test                    # Unit/Widget tests

Inside `lib` we have a number of folders:

    ├── cores                    # Core functionality include dependency injection config, helpers, reusable widgets, constants, etc
    ├── features                 # Feature split by page include data, domain and presentation layer
    └── main.dart                # Entry point into the app 

# 📚 Libraries:

- [Dartz](https://pub.dev/packages/dartz)
- [Dio](https://pub.dev/packages/dio)
- [Hive](https://pub.dev/packages/hive)
- [Shared Preferences](https://pub.dev/packages/shared_preferences)
- [Flutter BLOC](https://pub.dev/packages/flutter_bloc)
- [Freezed Annotation](https://pub.dev/packages/freezed_annotation)
- [Get It](https://pub.dev/packages/get_it)
- [Injectable](https://pub.dev/packages/injectable)
- [JSON Annotation](https://pub.dev/packages/json_annotation)
- [Equatable](https://pub.dev/packages/equatable)
- [Build Runner](https://pub.dev/packages/build_runner)