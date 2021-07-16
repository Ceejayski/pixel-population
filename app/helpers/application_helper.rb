module ApplicationHelper
  def base_creator_btn
    btns = []
    if Pixel.first.nil?
      btns[0] = 'Simple Pixel Population Emulator, Click the button below to begin'
      btns[1] =
        (button_to 'Generate Base', pixels_generate_path, method: :post, class: 'btn btn-primary')
    end
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
