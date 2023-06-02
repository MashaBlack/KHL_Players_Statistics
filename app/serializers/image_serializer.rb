class ImageSerializer < ActiveModel::Serializer
  attributes :id, :file, :name, :team, :goals, :assists, :ave_value, :theme_id
end
