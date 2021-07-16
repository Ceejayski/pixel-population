class ApplicationController < ActionController::Base
  def unique_name_generator
    rand_name = Faker::Alphanumeric.alphanumeric(number: 10)
    new_name = 'Pixel'.concat(rand_name)
    until Pixel.find_by_name(new_name).nil?
      rand_name = Faker::Alphanumeric.alphanumeric(number: 10)
      new_name = 'Pixel'.concat(rand_name)
    end
    new_name
  end

  def rand_number_generator
    rand(0..255)
  end

  def number_selector(a, b)
    [a, b].sample
  end

  def child_creator(a, b)
    child = Pixel.new
    child.name = unique_name_generator
    child.R = number_selector(a.R, b.R)
    child.B = number_selector(a.B, b.B)
    child.G = number_selector(a.G, b.G)
    child.save
    child.parent_child_relationships.create(parent_id: a.id)
    child.parent_child_relationships.create(parent_id: b.id)
  end

  def pair_child_creator
    pairs = Pixel.pair_generator
    number = pairs.size
    pairs.each do |pair|
      child_creator(pair.last, pair.first)
    end
    text = 'Pixel'.pluralize(number)
  end
end
