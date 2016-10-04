class ContactController < ApplicationController

  def index
    render json: Contact.all
  end

  def show
    render json: Contact.find(params[:id])
  end

  def update
    contact = Contact.find(params[:id])
    if contact.update!(contact_params)
      render json: contact
    else
      render (
      json: contact.errors.full_messages, status: :unprocessable_entity
      )
    end
  end

  def destroy
    Contact.find(params[:id]).destroy
  end

  def create
    contact = Contact.new(params[:contact].permit(:name, :email, :user_id))
    if contact.save
      render json: contact
    else
      render (
      json: contact.errors.full_messages, status: :unprocessable_entity
      )
    end
  end

  private
  def contact_params
    params.require(:contact).permit(:name, :email, :user_id)
  end
end
