class HomeController < ApplicationController
  def index
    render json: {
      message: "Finance Dashboard System Endpoints",
      endpoints: {
        users: {
          list: "http://127.0.0.1:3000/users",
          create: "http://127.0.0.1:3000/users [POST]",
          update: "http://127.0.0.1:3000/users/:id [PATCH]",
          change_status: "http://127.0.0.1:3000/users/:id/status [PATCH]"
        },
        records: {
          list: "http://127.0.0.1:3000/financial_records",
          list_filter_by_record_type: "http://127.0.0.1:3000/financial_records?record_type=income",
          list_filter_by_category: "http://127.0.0.1:3000/financial_records?category=bills",
          list_filter_by_date: "http://127.0.0.1:3000/financial_records?start_date=2026-03-21&end_date=2026-03-31",
          create: "http://127.0.0.1:3000/financial_records [POST]",
          update: "http://127.0.0.1:3000/financial_records/:id [PATCH]",
          delete: "http://127.0.0.1:3000/financial_records/:id [DELETE]",
        },
        dashboard: {
          summary: "http://127.0.0.1:3000/financial_records/summary"
        }
      }
    }
  end
end
