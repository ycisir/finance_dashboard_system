# Financial Dashboard API

A **Ruby on Rails API** for managing financial data with **role-based access control (RBAC)**.
Designed to demonstrate clean architecture, RESTful design, and analytics-focused backend development.

### Key Features
* Role-based access (**Viewer, Analyst, Admin**)
* User management (Admin-only)
* Financial records CRUD (income & expenses)
* Dashboard analytics (totals, balance, trends)
* Filtering by date, category, and type
* Input validation & structured error handling

### Tech Stack
* Ruby on Rails (API mode)
* SQLite
* RESTful architecture

### Roles
| Role    | Permissions                   |
| ------- | ----------------------------- |
| Viewer  | Read financial records        |
| Analyst | Read + access analytics       |
| Admin   | Full access (users & records) |

### API Overview
**Users**
* POST `/users`
* GET `/users`
* PATCH `/users/:id`
* PATCH `/users/:id/status`

**Financial Records**
* POST `/financial_records`
* GET `/financial_records`
* PATCH `/financial_records/:id`
* DELETE `/financial_records/:id`

**Dashboard**
* GET `/financial_records/summary`

### Quick Start

```bash
# clone the repository
git clone https://github.com/ycisir/financial_dashboard.git

# move to project directory
cd financial_dashboard

# rename env file
mv .env.example .env

# install dependencies
bundle install

# create and migrate db
rails db:prepare

# run tests
rails t

# start dev server
rails s
```
Server runs at `http://127.0.0.1:3000`

### Testing Roles
```bash
rails c
```
```ruby
user = User.first
user.admin!    # or analyst! / viewer!
```

### Notes
* Uses mocked authentication (`current_user`)
* SQLite for simplicity and quick setup
* Optimized for demo and development use

### Future Enhancements
* JWT authentication
* Pagination & search
* API documentation (Swagger)
* Production-ready DB (PostgreSQL)
