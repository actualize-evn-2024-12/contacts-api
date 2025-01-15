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

  def all
    contacts = Contact.all    

    # serialization, how to i get my data into json
    render json: [
      {
      phone_number: contacts[0].phone_number,
      first_name: contacts[0].first_name,
      last_name: contacts[0].last_name,
      email: contacts[0].email,
      created_at: contacts[0].created_at,
      id: contacts[0].id,
    },
    {
      phone_number: contacts[1].phone_number,
      first_name: contacts[1].first_name,
      last_name: contacts[1].last_name,
      email: contacts[1].email,
      created_at: contacts[1].created_at,
      id: contacts[1].id,

    }]
  end
end
