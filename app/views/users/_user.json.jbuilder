json.extract! user, :id, :first_name, :string,, :last_name, :string,, :e_mail, :string, :created_at, :updated_at
json.url user_url(user, format: :json)
