class ExceptionsController < ApplicationController
  def index
    @exceptions = HelpingHand::Exception.order(created_at: :desc).paginate(page: params[:page])
  end

  def show
    @exceptions = HelpingHand::Exception.where(class_name: params[:id])
  end
end
