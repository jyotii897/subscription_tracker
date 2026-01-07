# 📊 Subscription Tracker (Sub Notifier)

![Flutter](https://img.shields.io/badge/Flutter-%2302569B.svg?style=for-the-badge&logo=Flutter&logoColor=white)
![Dart](https://img.shields.io/badge/dart-%230175C2.svg?style=for-the-badge&logo=dart&logoColor=white)
![Hive](https://img.shields.io/badge/Hive-Database-orange?style=for-the-badge)

A powerful, beautiful, and interactive Flutter application to track your subscriptions, manage costs, and get notified before payments.

---

## ✨ Features

*   **🎨 Vibrant UI**: Glassmorphism design with dynamic gradients for popular services (Netflix, Spotify, YouTube, etc.).
*   **📈 Spending Analytics**: Visualize your monthly subscription costs with interactive charts.
*   **🔔 Smart Notifications**: Get reminded 1 day, 3 days, or 1 week before a payment is due.
*   **⚡ Quick Add**: Pre-defined templates for popular services to add subscriptions in seconds.
*   **🌗 Dark/Light Mode**: Fully supported theming with persistence.
*   **🌍 Localization**: Available in **English** and **Hindi (हिंदी)**.
*   **💾 Offline First**: All data is stored locally using Hive.

---

---

## 🚀 Getting Started

Follow these steps to run the project on your local machine.

### Prerequisites

*   [Flutter SDK](https://docs.flutter.dev/get-started/install)
*   [Git](https://git-scm.com/downloads)
*   **Visual Studio 2022** (if running on Windows Desktop) with C++ workload.

### Installation

1.  **Clone the repository**
    ```bash
    git clone https://github.com/jyotii897/subscription_tracker.git
    cd subscription_tracker
    ```

2.  **Install dependencies**
    ```bash
    flutter pub get
    ```

3.  **Run the app**
    *   **Web (Chrome)**:
        ```bash
        flutter run -d chrome
        ```
    *   **Windows**:
        ```bash
        flutter run -d windows
        ```

---

## 🛠️ Code Generation

If you modify the data models or translation files, run the following commands:

*   **Regenerate Translations (`slang`)**:
    ```bash
    dart run slang
    ```

*   **Regenerate Hive Adapters (`build_runner`)**:
    ```bash
    dart run build_runner build --delete-conflicting-outputs
    ```

---

## 📂 Project Structure

```
lib/
├── bloc/           # State Management (Bloc/Cubit)
├── domain/         # Models and Repositories
├── features/       # UI Screens (Home, Settings, etc.)
├── i18n/           # Localization Files
├── locator/        # Dependency Injection (GetIt)
├── services/       # Infrastructure (Hive, Notifications)
├── theme/          # App Styling and Colors
└── widgets/        # Reusable Components
```

---

## 🤝 Contributing

Contributions are welcome! Please fork the repository and submit a pull request.

1.  Fork the Project
2.  Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3.  Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4.  Push to the Branch (`git push origin feature/AmazingFeature`)
5.  Open a Pull Request

---

