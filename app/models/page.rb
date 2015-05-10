class Page < ActiveRecord::Base
  belongs_to :exception, class_name: "HelpingHand::Exception"
end
