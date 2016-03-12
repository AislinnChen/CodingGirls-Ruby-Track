json.array!(@name_cards) do |name_card|
  json.extract! name_card, :id, :given_name, :fax, :cell_phone
  json.url name_card_url(name_card, format: :json)
end
