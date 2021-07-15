module ApplicationHelper
  def base_creator_btn
    btns = []
    if Pixel.first.nil?
     btns[0] = (button_to 'Auto Generate Base', pixels_generate_path, method: :post)
     btns[1] =(button_to 'Manually Create Base', pixels_new_path)
    else
    end
    return btns
  end

  def toastr_flash
    flash.each_with_object([]) do |(type, message), flash_messages|
      type = 'success' if type == 'notice'
      type = 'error' if type == 'alert'
      text = "<script>toastr.#{type}('#{message}', '', { closeButton: true, progressBar: true })</script>"
      flash_messages << text.html_safe if message
    end.join("\n").html_safe
  end
end
