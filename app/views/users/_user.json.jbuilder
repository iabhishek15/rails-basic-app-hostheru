json.extract! user, :id, :name, :username, :password, :confirm_password, :agree, :created_at, :updated_at
json.url user_url(user, format: :json)
