class ApplicationController < ActionController::Base
  def unique_name_generator
    rand_name = Faker::Alphanumeric.alphanumeric(number: 10)
    new_name = 'Pixel'.concat(rand_name)
    until Pixel.find_by_name(new_name).nil? do
      rand_name = Faker::Alphanumeric.alphanumeric(number: 10)
      new_name = 'Pixel'.concat(rand_name)
    end
    new_name
  end
  def rand_number_generator
    rand(0..255)
  end
end
