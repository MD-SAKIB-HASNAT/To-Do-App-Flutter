# 📝 Flutter To-Do App

A minimalistic and user-friendly To-Do application built using **Flutter** and **Hive** for local persistent storage. The app allows users to add, delete, and manage their daily tasks with ease.

---

## 🚀 Features

- ✅ Add, complete, and delete tasks.
- 🧠 Local data persistence using Hive.
- 🧼 Clean and modern UI with Material Design.
- 🛠️ Uses `flutter_slidable` for swipe-to-delete functionality.
- 🐝 Lightweight and efficient with zero backend dependencies.

---

## 📱 Screenshots

> Coming soon...

---

## 📦 Packages Used

| Package             | Description                             |
|---------------------|-----------------------------------------|
| `hive`              | Lightweight & blazing fast key-value DB |
| `hive_flutter`      | Hive bindings for Flutter               |
| `flutter_slidable`  | Adds swipeable list tile actions        |
| `cupertino_icons`   | iOS-style icons for Flutter             |

---

## 🏗️ Project Structure

lib/
├── main.dart # App entry point
├── data/
│ └── databse.dart # Hive database operations
├── pages/
│ └── home_page.dart # Main home screen
├── util/
│ ├── dialog_box.dart # Custom dialog for adding tasks
│ ├── my_button.dart # Reusable button widget
│ └── todo_tile.dart # Custom tile for each task

📂 Hive Database Info
The app stores your tasks in a Hive box named 'mybox'.

The to-do list is saved under the key 'TODOLIST'.

✨ Sample Tasks on First Launch
If it's your first time using the app, it initializes with:

[
  ['Welcome to your todo app!', false],
  ['Complete your first task', false],
]

🛡️ Requirements
Flutter SDK 3.8.1 or above
Dart SDK 3.0.0 or above

💡 Future Improvements
🔁 Task editing support
📅 Task scheduling with reminders
☁️ Cloud sync with Firebase or Supabase

👨‍💻 Author
Sakib
📧 sakib.cse.2022@gmail.com


📃 License
This project is licensed under the MIT License - see the LICENSE file for details.


Let me know if you'd like me to customize this further (e.g., add GitHub badge, dark mode, or upload screenshots).




