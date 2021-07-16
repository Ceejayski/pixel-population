desc 'Whenever rake task test'
task create_new_generation: :environment do
  unless Pixel.first.nil?
    controller = ApplicationController.new
    controller.pair_child_creator
  end
  Rails.logger.info 'Whenever task'
end
