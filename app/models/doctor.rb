class Doctor < ApplicationRecord
    #Set up relationship with appointmentS
    has_many :appointments, dependent: :destroy
    #set up relatoinship with clientS through appointmentS
    has_many :clients, through: :appointments
end
