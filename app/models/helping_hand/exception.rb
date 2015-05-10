class HelpingHand::Exception < ActiveRecord::Base
  has_one :page

  validates :class_name, :message, presence: true

  def self.table_name_prefix
    'helping_hand_'
  end
end
