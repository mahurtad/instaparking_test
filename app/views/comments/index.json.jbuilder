json.array!(@comments) do |comment|
  json.extract! comment, :id, :id_comments, :score, :description, :reserve_id
  json.url comment_url(comment, format: :json)
end
