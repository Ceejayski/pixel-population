module ApplicationHelper
  def base_creator_btn
    btns = []
    btns[0] = (button_to 'Auto Generate Base', pixels_generate_path, method: :post) if Pixel.first.nil?
    btns
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
