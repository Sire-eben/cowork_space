# 🏢 Coworking Space Web App

A **Flutter Web Application** for coworking spaces — users can **book a workspace** and **shop for customized items** from the comfort of their browser.

---

## 🚀 Overview

The **Coworking Space Web App** is a simple yet powerful Flutter-based web project designed for coworking hubs, shared offices, or innovation centers.  
It allows users to:

- 📅 **Book workspaces** or meeting rooms.
- 🛍️ **Shop for custom-branded items** (e.g., mugs, T-shirts, stationery).
- 💳 (Coming soon) **Make secure payments** online.
- 💼 (Optional) Admin dashboard for managing bookings and inventory.

---

## 🧠 Tech Stack

| Layer              | Technology                                             |
| ------------------ | ------------------------------------------------------ |
| Frontend           | Flutter Web                                            |
| Routing            | `go_router`                                            |
| Hosting            | Vercel                                                 |
| State Management   | Provider / Riverpod (based on implementation)          |
| Backend (optional) | Pre-configured REST API endpoints                      |
| Theming            | Custom responsive layout with desktop and mobile views |

---

## 🧭 Project Structure

lib/
├── core/
│ ├── utils/ # Common utilities and themes
│ └── widgets/ # Shared components
├── pages/
│ ├── home/ # Landing page
│ ├── booking/ # Booking page
│ └── shop/ # E-commerce section (WIP)
└── main.dart # Entry point with routing setup

---

## ⚙️ Getting Started

### 1️⃣ Clone the repo

```bash
git clone https://github.com/<your-username>/coworking_space.git
cd coworking_space
```

2️⃣ Install dependencies
flutter pub get

3️⃣ Run locally
flutter run -d chrome

4️⃣ Build for web
flutter build web

5️⃣ Deploy to Vercel

Make sure your vercel.json has this rewrite rule:

{
"rewrites": [{ "source": "/(.*)", "destination": "/" }]
}

Then:

vercel --prod

🧩 Environment Variables (Optional)

If you’re integrating an API:

API_BASE_URL=https://api.example.com
API_KEY=your_api_key_here
