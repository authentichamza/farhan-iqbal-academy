class ContactsController < ApplicationController
  def index
    @contact = Contact.new
  end

  def create 
    @contact = Contact.new(contact_params)
    if @contact.save
      flash[:success]="We have been contacted will respond to you soon"
      render :index
    else
      render :index
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end
end
