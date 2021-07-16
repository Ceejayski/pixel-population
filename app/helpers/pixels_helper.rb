module PixelsHelper
  def pixel_children(pixel)
    text = ''
    if pixel.children.empty?
      text = "#{pixel.name} has no child yet"
    elsif pixel.children.size == 1
      text = "#{pixel.name} has only #{pixel.children[0].name} as his child"
    elsif pixel.children.size == 2
      text = "#{pixel.name} has only #{pixel.children[0].name} and #{pixel.children[1].name} as his children"
    else
      text = "#{pixel.name} has  #{pixel.children[0].name}, #{pixel.children[1].name} and #{pixel.children.size - 2} more as his children"
    end
    text
  end
end
