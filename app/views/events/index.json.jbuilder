json.array!(@events) do |event|
  json.extract! event, :id, :session_no, :event_name, :date, :coach_name
  json.url event_url(event, format: :json)
end
