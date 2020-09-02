class ApplicationController < ActionController::Base
before_action :set_client

def index

    @appointments = @client.appointments.all

end

def new
    @appointment = @client.appointments.new
    @doctors = Doctor.all
end

def create
    @appointment = @client.appointments.new(appt_params)
    @doctors = Doctor.all
    if @appointment.save
        redirect_to client_appts_path(@client)
    else
        render :new
    end

end

def destroy
    @appointment = @patient.appointments.find(params[:id])
    @appointment.destroy
    redirect_to client_appts_path
end

private 

 def set_patient
    @patient = Client.find(params[:patient_id])
 end

 def appt_params
    params.require(:appointment).permit(:doctor_id, :date)
 end

end
