class Page < ActiveRecord::Base
  has_paper_trail only: [:body]

  def exceptions
    @exceptions ||= HelpingHand::Exception.where(class_name: class_name, message: message)
  end
end
