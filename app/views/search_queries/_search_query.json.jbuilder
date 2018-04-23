json.extract! search_query, :id, :query_string, :query_response, :created_at, :updated_at
json.url search_query_url(search_query, format: :json)
