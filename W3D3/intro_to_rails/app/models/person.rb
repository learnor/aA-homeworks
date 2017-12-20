class Person < ApplicationRecord
  validates :name, :house_id, presence: true

  has_many(
    :houses,
    class_name: 'House',
    foreign_key: :house_id,
    primary_key: :id
  )
end
