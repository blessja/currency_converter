json.extract! history_log, :id, :from, :to, :amount, :result, :created_at, :updated_at
json.url history_log_url(history_log, format: :json)
