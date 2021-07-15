class Filial < ApplicationRecord
  belongs_to :parent, class_name: 'Pixel'
  belongs_to :child, class_name: 'Pixel'
end
