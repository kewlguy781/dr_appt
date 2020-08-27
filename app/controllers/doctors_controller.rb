class DoctorsController < ApplicationController
  #Before action goes here, make sure to set to show/destory. Maybe edit too? 
  before_action :set_doctor, only: [:show, :destroy, :edit]

  #Index
  def index
  end

  #Show
  def show
  end

  #New
  def new
  end

  #Create

  #Delete/Destroy

  #Edit

  private

  # Set up Doctor's (by their ID) and their parameters

#set up parameter that is permit to be entered into data




end
