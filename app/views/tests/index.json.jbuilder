json.array!(@tests) do |test|
  json.extract! test, :content
  json.url test_url(test, format: :json)
end