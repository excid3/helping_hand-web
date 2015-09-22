class Page < ActiveRecord::Base
  def exceptions
    HelpingHand::Exception.where(class_name: class_name, message: message)
  end
end
