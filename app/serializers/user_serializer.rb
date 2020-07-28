class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :nickname, :location_id
end
