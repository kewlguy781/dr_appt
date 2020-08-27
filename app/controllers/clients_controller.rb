class ClientsController < ApplicationController
   #Before action goes here, make sure to set to show/destory. Maybe edit too? 
  before_action :set_client, only: [:show, :destory, :edit]

  #Index
  def index
    #need to create class instance of full name combining First name and Last name
    @clients = Client.all
  end

  #Show
  def show
  end

  #New
  def new
    @client = Client.new
    render :_form
  end
  
  def create
    @client = Client.new(client_params)
    if @client.save
      redirect_to clients_path
    else
      render :new
    end

  end

  #Create

  #Delete/Destroy

  #Edit

  private

# Set up Client (by their ID) and their parameters
def set_client
  @client = Client.find(params[:id])
end

#set up parameter that is permit to be entered into data
def client_params
  params.require(:client).permit(:first_name, :last_name, :notes)
end
end