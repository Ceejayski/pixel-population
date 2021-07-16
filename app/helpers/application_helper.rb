module ApplicationHelper
  def base_creator_btn
    btns = []
    if Pixel.first.nil?
     btns[0] = (button_to 'Auto Generate Base', pixels_generate_path, method: :post)
     btns[1] =(button_to 'Manually Create Base', pixels_new_path)
    else
      btns = []
      btns[0] = (button_to 'Create New Pixel Filial Generation', pixels_generate_filial_path, method: :post)
    end
    return btns
  end

  def bootstrap_class_for_flash(flash_type)
    case flash_type
    when 'success'
      'alert-success'
    when 'error'
      'alert-danger'
    when 'alert'
      'alert-warning'
    when 'notice'
      'alert-info'
    else
      flash_type.to_s
    end
  end
end
