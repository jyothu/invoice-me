json.array!(@invitations) do |invitation|
  json.extract! invitation, :id, :name, :email, :business_id
  json.url invitation_url(invitation, format: :json)
end
