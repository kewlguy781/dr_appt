class Client < ApplicationRecord
    #Set up relationship with appointmentS
    has_many :appointments, dependent: :destroy
    #Set up relationship with doctorS, through appointmentS
    has_many :doctors, through: :appointments

end
