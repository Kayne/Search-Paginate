class PatientsController < ApplicationController

  def index
    @query = Patient.search(params[:q])
    @patients = @query.result(:distinct => true)
    @patients = @patients.paginate(:page => params[:page], :per_page => 15)
   # @patients = Patient.paginate(:page => params[:page], :per_page => 15)
  end

end
