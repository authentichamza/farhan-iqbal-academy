class AdmissionsController < ApplicationController
	def index
		@admission = Admission.new
	end
	
	def create 
    @admission = Admission.new(contact_params)
    if @admission.save
      flash[:success]="Your application was successful will respond to you soon"
      render :index
    else
      render :index
    end
  end

  private

  def contact_params
    params.require(:admission).permit(:name, :email, :phone_number, :grade, :subject_choice, :medium)
  end
end
