class ActionsController < ApplicationController

  def index
    @actions = Action.all
    render json: @actions
  end

  def create
    @action = Action.new(event: params[:event])
    contact = params[:event].slice(/[+].?([A-Z]+[a-z]*.?[A-Z]*[a-z]*[A-Z]*[a-z]*)/)
    company = params[:event].slice(/[@].?([A-Z]+[a-z]*.?[A-Z]*[a-z]*[A-Z]*[a-z]*)/)
    if contact
      @contact = Contact.find_or_create_by(name: contact)
      @action.contact_id = @contact.id
    end
    if company
      @company = Company.find_or_create_by(name: company)
      @action.company_id = @company.id
    end
    @action.save
    render :json => @action
  end

  def destroy
  end

private
  def action_params
    params.require(:event).permit(:event)
  end


end
