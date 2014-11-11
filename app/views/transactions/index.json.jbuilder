json.array!(@transactions) do |transaction|
  json.extract! transaction, :id, :balance, :credit, :debit
  json.url transaction_url(transaction, format: :json)
end
