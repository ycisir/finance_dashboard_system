# Financial Dashboard API

A Financial Dashboard for managing financial records and analytics.

### ✨ Features
* Role-based access (Viewer, Analyst, Admin)
* User management (Admin)
* Financial records CRUD (income & expenses)
* Dashboard analytics (totals, balance, trends)
* Filtering by date, category, and type
* Input validation & structured error handling

### 🛠 Tech Stack
* Ruby on Rails (API), SQLite, RESTful architecture

### 👥 Roles
Viewer (Read financial records), Analyst (+Analytics), Admin

### ⚙️ Setup
```bash
git clone https://github.com/ycisir/financial_dashboard.git
cd financial_dashboard
bundle install
rails db:setup
rails t && rails s
```
You'll see endpoints on `http://127.0.0.1:3000/` also [postman](./financial_dashboard_api_endpoints.postman_collection.json) collections added.

### 📄 Notes
* Uses mocked authentication (`current_user`)