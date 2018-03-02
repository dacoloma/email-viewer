class EmailsController < ApplicationController
  #before_action :all_tasks, only: [:index, :create]
  #respond_to :html, :js

  def index
    @emails=Email.all
    @emails.each do |email|
      p email.opened
      p "======="
    end
  end

  def new
    @email=Email.new
  end

  def create
    @email=Email.create(email_params)
  end

  def show
    @email = Email.find(params[:id])
    p "================"
    @email.update(opened: true)
    p @email[:opened]
  end

  def destroy
    @email = Email.find(params[:id])
    @email.destroy

    respond_to do |format|
      format.html { redirect_to emails_url }
      format.json { head :no_content }
      format.js   { render :layout => false }
    end


  end

  private
  def email_params
    params.require(:email).permit(:object, :content)
  end


end
