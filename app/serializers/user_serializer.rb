class UserSerializer < ActiveModel::Serializer
  attributes :email, :nickname, :location_id
end
