class DoctorsController < ApplicationController
  #Before action goes here, make sure to set to show/destory. Maybe edit too? 
  before_action :set_doctor, only: [:show, :destroy, :edit]

  #Index
  def index
    @doctors = Doctor.all
  end

  #Show
  def show
  end

  #New
  def new
    @doctor = Doctor.new
    render :_form
  end
  
  def create
    @doctor = Doctor.new(doctor_params)
    if @doctor.save
      redirect_to doctors_path
    else
      render :new
    end

  end

  #Delete/Destroy
  def destroy
    @doctor.destroy
    redirect_to doctors_path
  end
  
  #Edit

  private

  # Set up Doctor's (by their ID) and their parameters
  def set_doctor
    @doctor = Doctor.find(params[:id])
  end


#set up parameter that is permit to be entered into data

def doctor_params
  params.require(:doctor).permit(:first_name, :last_name, :notes)
end


end
