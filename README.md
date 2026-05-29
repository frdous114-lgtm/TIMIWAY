# TIMIWAY Smart

A smart tourism platform built for Cities, Companies, and Tourists to seamlessly connect, explore, and manage tourism data via dashboards and booking systems.

## 🛠️ Tech Stack
* **Frontend:** HTML, CSS (Glassmorphism), Vanilla JavaScript
* **Backend:** Node.js, Express.js
* **Database:** Supabase (PostgreSQL)

## 📁 Project Structure
* `frontend/`: Contains the UI files (HTML, CSS, JS). 
  * `index.html`: Tourist Homepage & Search
  * `details.html`: Destination details & Booking
  * `city-dashboard.html`: Analytics & Site Management
  * `company-dashboard.html`: Booking & Services Management
  * `login.html`: Unified authentication portal
* `backend/`: Contains the server logic & APIs.
  * `server.js`: Main Express API definitions.
  * `supabaseClient.js`: Connection logic to Supabase.
  * `seed.js`: Script to generate dummy data.
* `database/`: Contains the SQL schema file.
  * `schema.sql`: Full DB schema definitions (Tables, Triggers, References).

## 🚀 Getting Started

### 1. Database Setup
Ensure you have created a project on Supabase and executed the commands found inside `database/schema.sql` in the SQL Editor to set up your tables.

### 2. Backend Initialization
Open a terminal and navigate to the `backend/` directory:
```bash
cd backend
npm install
```

Configure the `.env` file with your `SUPABASE_URL` and `SUPABASE_ANON_KEY`, then generate the initial data and start the server:
```bash
npm run seed
npm run dev
```

### 3. Frontend Running
Simply open any html file inside the `frontend/` directory (e.g. `index.html`) using a modern web browser to view and interact with the dashboards.

---
**Note:** This is a Minimum Viable Product (MVP) aimed for testing UI interactions and verifying the database pipeline functionality.
cd backend
npm run dev
npm run deV