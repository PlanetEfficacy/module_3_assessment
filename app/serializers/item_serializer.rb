class ItemSerializer < ActiveModel::Serializer
  attributes :id, :description, :image_url, :name
end
