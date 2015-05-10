class MessagesController < ApplicationController
  before_action :set_x_frame_options, only: [:record]
  layout "minimal", only: [:record]

  def show
    @exception = HelpingHand::Exception.find_by(class_name: params[:exception_id], message: params[:id])
  end

  def record
    @exception = HelpingHand::Exception.where(class_name: params[:exception_id], message: params[:message_id]).first_or_create
    @exception.increment! :throws

    render action: :show
  end

  private

    def set_x_frame_options
      response.headers['X-Frame-Options'] = 'ALLOWALL'
    end

end
