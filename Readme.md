# NullTalk - Flutter Chat App

A dark-themed real-time chat application built with **Flutter** and **Firebase**.

## 🚀 Features

- 🔐 Secure login and registration (email & password)
- ⚡ Real-time chat powered by **Cloud Firestore**
- 🕒 Message timestamps with ordering
- 💬 Clean sender/receiver chat bubbles
- ❌ Error handling with custom SnackBars
- 🌙 Dark mysterious theme inspired by modern UI

## 🛠️ Technologies Used

- Flutter
- Firebase Authentication
- Cloud Firestore

## 📁 Project Structure

- **lib/**
  - **helper/**
    - `SnakeBar.dart` (Custom snackbar for feedback)
    - `theme.dart` (Theme configuration)
  - **models/**
    - `message_model.dart` (Message data model)
  - **pages/**
    - `chat_view.dart` (Main chat interface)
    - `login_view.dart` (Login screen)
    - `register_view.dart` (Register screen)
  - **widgets/**
    - `chat_bubble.dart` (Sender/receiver UI bubbles)
    - `custom_button.dart` (Reusable button)
    - `custom_text_field.dart` (Reusable input field)
  - `constants.dart` (App-wide colors, strings)
  - `firebase_options.dart` (Firebase config file)
  - `main.dart` (Application entry point)