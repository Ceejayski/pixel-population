class Pixel < ApplicationRecord
  validates_numericality_of :R, :B, :G, greater_than_or_equal_to: 0, less_than_or_equal_to: 255, only_integer: true,
                                        message: 'Gene sequence must be between 0-255'
  validates :name, uniqueness: true, presence: true
  validates_presence_of :R, :B, :G

  has_many :parent_child_relationships, class_name: 'Filial', foreign_key: :child_id
  has_many :parents, through: :parent_child_relationships, source: :parent

  has_many :child_parent_relationships, class_name: 'Filial', foreign_key: :parent_id
  has_many :children, through: :child_parent_relationships, source: :child
  scope :latest, -> { order(created_at: :desc) }

  def self.pair_generator
    pixels = all.to_a.shuffle
    paired_arr = pixels.each_slice(2).to_a
    paired_arr.select { |i| i.size == 2 }
  end
end
