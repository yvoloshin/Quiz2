class EmailsController < ApplicationController

def index
  @emails=Email.all
  @email=Email.new
end

def create
  Email.create(email_params)
  redirect_to root_path
  end

  private

  def email_params
    params.require(:email).permit(:name, :email)
  end


end
