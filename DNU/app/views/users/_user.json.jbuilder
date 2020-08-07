json.extract! user, :id, :f_name, :l_name, :email, :age, :created_at, :updated_at
json.url user_url(user, format: :json)
