class Dog < ApplicationRecord
    validates :name, length: { minimum: 2 , maximum: 15}
end
