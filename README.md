🖤 NullTalk - Flutter Chat App
A dark-themed real-time chat application built with Flutter and Firebase.

🚀 Features
🔐 Secure authentication (Email & Password)

⚡ Real-time chat powered by Cloud Firestore

🕒 Timestamps with automatic message ordering

💬 Clean UI with sender/receiver chat bubbles

❌ Error handling using custom SnackBars

🌙 Dark mysterious theme inspired by modern UI trends

🛠️ Technologies Used
💙 Flutter

🔥 Firebase Authentication

📂 Cloud Firestore

📁 Project Structure

```
bash
Copy
Edit
lib/
│
├── helper/
│   ├── SnakeBar.dart            # Custom snackbar for error/info messages
│   └── theme.dart               # App-wide dark theme configuration
│
├── models/
│   └── message_model.dart       # Message data model
│
├── pages/
│   ├── chat_view.dart           # Main chat screen
│   ├── login_view.dart          # Login screen
│   └── register_view.dart       # Registration screen
│
├── widgets/
│   ├── chat_bubble.dart         # Sender & receiver message UI
│   ├── custom_button.dart       # Reusable button widget
│   └── custom_text_field.dart   # Reusable input field
│
├── constants.dart               # Global constants (colors, strings)
├── firebase_options.dart        # Firebase config (auto-generated)
└── main.dart                    # App entry point
```
