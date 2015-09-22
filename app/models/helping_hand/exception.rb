class HelpingHand::Exception < ActiveRecord::Base
  validates :class_name, :message, presence: true

  before_validation :clean_message

  def self.table_name_prefix
    'helping_hand_'
  end

  def page
    Page.where(class_name: class_name, message: message).first
  end

  private

    def clean_message
      # Remove the memory address of the instance
      self.message.gsub!(/:0x[\w]+/, "")
    end
end
