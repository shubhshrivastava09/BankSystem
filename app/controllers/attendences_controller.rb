class AttendencesController < ApplicationController
  def index
  end
  def new
    #new method
    @attend = current_user.attendences.new
  end
  def create
    #create method
    @attend = Attendence.new(attendence_params)
    if @attend.save
      flash[:notice] = 'Attendence Added Successfully !'
      render :new
    end
  end

  def show
    #show method
  end

    

  private
   def attendence_params
    params.require(:attendence).permit(:att_date,:status,:employable).merge(employable: current_user)
   end
end
