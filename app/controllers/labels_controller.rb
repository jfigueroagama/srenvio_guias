class LabelsController < ApplicationController
  before_action :get_overweight, only: [:show]

  def index
    @labels = Label.all
  end

  def show
    @label = Label.find(params[:id])
    if @label.nil?
      redirect_to action: :index
    end
  end

  private

  def get_overweight
    require 'fedex'
    fedex = Fedex::Shipment.new(:key => 'jfjwKS65xft8r8mh',:password => 'QYrbniTyMafyj4LXm4tV7nsq5',:account_number => '802388543', :meter => '119147906', :mode => 'production')
  end
 
end
