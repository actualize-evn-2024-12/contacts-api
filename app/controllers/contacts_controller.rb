class ContactsController < ApplicationController
  def first
    contact = Contact.find_by(id: 1)
    p contact.phone_number
    render json: {
      phone_number: contact.phone_number,
      first_name: contact.first_name,
      last_name: contact.last_name,
      email: contact.email,
      created_at: contact.created_at,
      id: contact.id,

    }
  end
end
