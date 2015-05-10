json.array!(@pages) do |page|
  json.extract! page, :id, :exception_id, :body
  json.url page_url(page, format: :json)
end
