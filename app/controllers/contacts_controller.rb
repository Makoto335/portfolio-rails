class ContactsController < ApplicationController
  before_action :is_json?

  def create
    @contact = Contact.new(contact_params)
    if @contact.valid?
      ContactMailer.send_mail(@contact).deliver
      render json: {}, status: :ok
    else
      render json: {}, status: :bad_request
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end

  def is_json?
    unless request.headers['Content-Type'] == 'application/json'
      render json: {}, status: :bad_request
    end
  end
end
